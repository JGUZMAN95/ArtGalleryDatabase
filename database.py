# database.py
# Handles all the methods interacting with the database of the application.
# Students must implement their own methods here to meet the project requirements.

import os
import pymysql.cursors
from datetime import datetime

db_host = os.environ['DB_HOST']
db_username = os.environ['DB_USER']
db_password = os.environ['DB_PASSWORD']
db_name = os.environ['DB_NAME']


def connect():
    try:
        conn = pymysql.connect(host=db_host,
                               port=3306,
                               user=db_username,
                               password=db_password,
                               db=db_name,
                               charset="utf8mb4",
                               cursorclass=pymysql.cursors.DictCursor)
        print("Bot connected to database {}".format(db_name))
        return conn
    except:
        print(
            "Bot failed to create a connection with your database because your secret environment variables "
            + "(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME) are not set".format(
                db_name))
        print("\n")


# your code here
def response(msg):
    command_parts = msg.split(", ")
    bot_command = command_parts[0]
    if "/topcollectors" in bot_command:
        db_response = top_collectors()
        return db_response
    elif "/galleryanalytics" in bot_command:
        gallery = command_parts[1]
        db_response = gallery_analytics(gallery)
        return db_response
    elif "/events" in bot_command:
        db_response = events()
        return db_response
    elif "/collectorsinterestedwork" in bot_command:
        lastName = command_parts[1]
        firstName = command_parts[2]
        db_response = collectors_interested_work(lastName, firstName)
        return db_response
    elif "/artistspublicinfo" in bot_command:
        lastName = command_parts[1]
        firstName = command_parts[2]
        db_response = artists_public_info(lastName, firstName)
        return db_response
    elif "/artworkimages" in bot_command:
        artName = command_parts[1]
        db_response = art_work_images(artName)
        return db_response
    elif "/purchase" in bot_command:
        artName = command_parts[1]
        lastName = command_parts[2]
        firstName = command_parts[3]
        formOfPayment = command_parts[4]
        db_response = purchase(artName, lastName, firstName, formOfPayment)
        return db_response
    elif "/createevent" in bot_command:
        date = command_parts[1]
        gallery = command_parts[2]
        db_response = create_event(date, gallery)
        return db_response
    elif "/approvecontractartist" in bot_command:
        contracId = command_parts[1]
        db_response = approve_contract_artist(contracId)
        return db_response
    elif "/addtoinventory" in bot_command:
        lastName = command_parts[1]
        firstName = command_parts[2]
        artName = command_parts[3]
        materials = command_parts[4]
        retail_price = command_parts[5]
        description = command_parts[6]
        demensions = command_parts[7]
        db_response = add_to_inventory(firstName, lastName, artName, materials, retail_price, description, demensions)
        return db_response
    elif "/todaysales" in bot_command:
        date = command_parts[1]
        db_response = today_sales(date)
        return db_response
    elif "/saleRepAnalytics" in bot_command:
        db_response = sales_rep_analytics()
        return db_response
    elif "/getart" in bot_command:
        artName = command_parts[1]
        db_response = get_art(artName)
        return db_response
    elif "/getartrange" in bot_command:
        min = command_parts[1]
        max = command_parts[2]
        db_response = get_art_range(min, max)
        return db_response
    elif "/completetransaction" in bot_command:
        lastName = command_parts[1]
        firstName = command_parts[2]
        paymentId = command_parts[3]
        db_response = complete_transaction(lastName, firstName, paymentId)
        return db_response
    elif "/collectorsof" in bot_command:
        lastName = command_parts[1]
        firstName = command_parts[2]
        db_response = collectors_of(lastName, firstName)
        return db_response
    elif "/findpastartwork" in bot_command:
        artName = command_parts[1]
        db_response = past_artwork(artName)
        return db_response
    elif "/numberofcollectorsinterestedin" in bot_command:
        lastName = command_parts[1]
        firstName = command_parts[2]
        db_response = number_of_collectors_intrsested(firstName,lastName)
        return db_response
    else:
        return "No Such Command"







def top_collectors():
    result = None
    return result


def gallery_analytics(gallery):
    result = None
    return result


def events():
  month = datetime.today().month
  result = None
  try:
    connection = connect()
    if connection:
      cursor = connection.cursor()
      query = """
      SELECT * FROM `createEvent` WHERE MONTH(`dateOfEvent`) = %s;"""
      variables = (month)
      cursor.execute(query, variables)
      connection.commit()
      result = cursor.fetchall()
      #checking for dictionaries
  except Exception as error:
    result = -1
    return error
  return result

def collectors_interested_work(lastName, firstName):
    result = None
    try:
      connection = connect()
      if connection:
        cursor = connection.cursor()
        query = """
        SELECT `ArtiistInfo.firstName` FROM `collector`, `ArtiistInfo` `notes` 
        WHERE firstName.collector = %s AND lastName.collector = %s
        AND notesId.collector = notes.notesId
        AND notes.intrestedId = artWorkIntrestedIn.intrestedId
        AND artWorkIntrestedIn.ArtiistInfo_artistId = ArtiistInfo.artistid;
        
      ;"""
        variables = (firstName, lastName)
        cursor.execute(query, variables)
        connection.commit()
        results = cursor.fetchall()
      #checking for dictionaries
        for x in results:
          result = results['firtName']
    except Exception as error:
      result = -1
      return error
    return result


def artists_public_info(lastName, firstName):
  result = None
  try:
    connection = connect()
    if connection:
      cursor = connection.cursor()
      query = """
        SELECT `biography`,`DOD`,`DOB`, `website` FROM `ArtiistInfo`, `artistPublic` WHERE ArtiistInfo.firstName = %s AND ArtiistInfo.lastName = %s AND ArtiistInfo.artistId = artistPublic.artistId_public;
      SELECT `artWorkName` FROM `artWorkInventory` WHERE `artWorkInfo_Basic_artWorkid_Basic`"""
      variables = (firstName, lastName)
      cursor.execute(query, variables)
      connection.commit()
      result = cursor.fetchall()
      #checking for dictionaries        
  except Exception as error:
    result = -1
    return error
  return result


def art_work_images(artName):
    result = None
    return result


def gallery_purchase(artName, lastName, firstName, formOfPayment):
    result = None
    return result


def purchase(artName, lastName, firstName, formOfPayment):
    result = None
    return result


def create_event(date, gallery):
  result = None
  try:
    connection = connect()
    if connection:
      cursor = connection.cursor()
      query = """
      SELECT `address` FROM `galleryInfo` WHERE galleryInfo.gallery = %s"""
      variables = (gallery)
      cursor.execute(query, variables)
      connection.commit()
      results = cursor.fetchall()
      for address in results:
        result = address["address"]
        
      query = """
      INSERT INTO `createEvent` (`address`,`dateOfEvent`) VALUES (%s,%s)"""
      variables = (result,date)
      cursor.execute(query, variables)
      connection.commit()
      result = "added"
  except Exception as error:
    result = -1
    return error
  return result


def approve_contract_artist(contracId):
    result = None
    return result


def add_to_inventory(firstName, lastName, artName, materials, retail_price, description, demensions):
  result = None
  artistId = None
  artId = None
  try:
    connection = connect()
    if connection:
      cursor = connection.cursor()
      query = """
      INSERT INTO `ArtiistInfo` (`firstName`,`lastName`) VALUES (%s, %s)
"""
      variables = (firstName, lastName)
      cursor.execute(query, variables)
      connection.commit()
      artistId = cursor.lastrowid

      query = """
          INSERT INTO `artWorkInfo_Basic`(`materials`,`description`,`retail_price`,`demensions`, `ArtiistInfo_artistId`) VALUES ( %s,%s,%s,%s,%s);"""
      variables = (materials, description, retail_price, demensions, artistId) 
      cursor.execute(query, variables)
      connection.commit()
      artId = cursor.lastrowid
      result = "added info"
      query = """
      INSERT INTO `artWorkInventory`(`artWorkid`, `artWorkName`) VALUES(%s, %s)
"""
      variables = (artId, artName)
      cursor.execute(query, variables)
      connection.commit()
      result = "Added To Inventory"
  except Exception as error:
    result = -1
    return error
  return result

def today_sales(date):
    result = None
    return result


def sales_rep_analytics():
    result = None
    return result


def get_art(artName):
    result = None
    return result


def get_art_range(min, max):
    result = None
    return result


def complete_transaction(lastName, firstName, paymentId):
    result = None
    return result


def collectors_of(lastName, firstName):
    result = None
    return result

def past_artwork(artName):
  result = None
  return result
  
def number_of_collectors_intrsested(firstName, lastName):
  result = None
  try:
    connection = connect()
    if connection:
      cursor = connection.cursor()
      query = """
      SELECT `artistId`FROM `ArtiistInfo` WHERE ArtiistInfo.firstName = %s AND ArtiistInfo.lastName = %s;
      SET @counter = 0;
      SELECT `ArtiistInfo_artistId`
      @counter:= @counter+1 AS row_counter
      FROM `artWorkIntrestedIn`
      WHERE `artistId` = artWorkIntrestedIn.ArtiistInfo_artistId   
"""
      variables = (firstName, lastName)
      cursor.execute(query, variables)
      connection.commit()
      result = cursor.fetchall()
      #checking for dictionaries        
  except Exception as error:
    result = -1
    return error
  return result