import mysql.connector
from mysql.connector import errorcode

try:
    # Database connection is being created
   cm_connection = mysql.connector.connect(
      user="mahesh",
      password="Mahesh@12345",
      host="127.0.0.1",
      database="MG_FastFoods")

except mysql.connector.Error as err:
   if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
      print("Invalid credentials")
   elif err.errno == errorcode.ER_BAD_DB_ERROR:
      print("Database not found")
   else:
      print("Cannot connect to database:", err)

else:
   # Cursor is being created here to running queries 
    my_cursor = cm_connection.cursor()
# SELECT command to show Customer table.
    query = ("SELECT * FROM Customer")
    my_cursor.execute(query) 
# Display query results
    print("Customer Table:")
    for row in my_cursor.fetchall():
        print("customer_id:{} \t customer_name:{} \t customer_email:{} \t customer_address:{} ".format(row[0], row[1], row[2], row[3]))
    print("!***********************!")
# SELECT command to show data from Products table.
    query = ("SELECT * FROM Products")
    my_cursor.execute(query) 
# Display query results
    print("Products Table:")
    for row in my_cursor.fetchall():
        print("product_id:{} \t product_name:{} \t product_price:{}".format(row[0], row[1], row[2]))
    print("!***********************!")
# SELECT command to show data from Payment table.
    query = ("SELECT * FROM Payment")
    my_cursor.execute(query) 
# Display query results
    print("Payment Table:")
    for row in my_cursor.fetchall():
        print("payment_id:{} \t order_id:{} \t total_payment:{} \t Date:{} ".format(row[0], row[1], row[2], row[3]))
    print("!***********************!")
# SELECT command to show data from Order table.
    query = ("SELECT * FROM `Order`")
    my_cursor.execute(query) 
# Display query results
    print("Order Table:")
    for row in my_cursor.fetchall():
        print("order_id:{} \t product_id:{} \t customer_id:{} \t quantity:{} \t order_type:{} ".format(row[0], row[1], row[2], row[3], row[4]))
    print("!***********************!")
# SELECT command to show data from Delivery table.
    query = ("SELECT * FROM Delivery")
    my_cursor.execute(query) 
# Display query results
    print("Delivery Table:")
    for row in my_cursor.fetchall():
        print("delivery_id:{} \t order_id:{} \t delivery_address:{}".format(row[0], row[1], row[2]))
    print("!***********************!")
# Terminating the cursor
    my_cursor.close()
#Closing the database connection
    cm_connection.close()