# database.py

import mysql.connector
from config import Config

def get_db_connection():
    """
    Establishes and returns a connection to the MySQL database 
    using settings from config.py.
    """
    try:
        connection = mysql.connector.connect(
            host=Config.DB_CONFIG['host'],
            user=Config.DB_CONFIG['user'],
            password=Config.DB_CONFIG['password'],
            database=Config.DB_CONFIG['database']
        )
        return connection
    except mysql.connector.Error as err:
        print(f"❌ Database Connection Error: {err}")
        return None

def init_db():
    """
    Optional: Helper to initialize tables if they don't exist.
    """
    conn = get_db_connection()
    if conn:
        print("✅ Successfully connected to the database.")
        conn.close()