import mysql.connector
def create_database(lhost, user, password, database_name):
    try:
        cnx = mysql.connector.connect(
           host = host,
           user = user,
           password = password
        )

        cursor = cnx.cursor()
        cursor.execute(f"CREATE DATABASE IF NOT EXISTS {alx_book_store}")
        cnx.commit()

        print(f"Database '{alx_book_store}' created succesfully!")

    except mysql.connector.Error as err:
        print(f"Error: {err}")
    finally:
        if cursor:
            cursor.close()
        if cnx:
            cnx.close()

if __name__ == "__main__":
    host = "localhost"
    user = "root"
    password = "Developer_@101"
    database_name = " alx_book_store"

    create_database(host, user, password, database_name)