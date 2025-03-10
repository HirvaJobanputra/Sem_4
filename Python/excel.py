import pandas as pd

def create_excel_from_tables(tables, filename="food_delivery_database.xlsx"):
    """
    Creates an Excel file with the given tables.

    Args:
        tables: A dictionary where keys are table names and values are lists of 
                dictionaries, each representing a row in the table.
        filename: The name of the Excel file to create.
    """

    with pd.ExcelWriter(filename, engine='openpyxl') as writer:  # Use openpyxl for .xlsx
        for table_name, data in tables.items():
            df = pd.DataFrame(data)  # Create a Pandas DataFrame
            df.to_excel(writer, sheet_name=table_name, index=False)  # Write to Excel

    print(f"Excel file '{filename}' created successfully.")



# Example usage (replace with your actual data):
tables = {
    "Restaurants": [
        {"restaurant_id": 1, "name": "Pizza Planet", "cuisine": "Italian", "address": "123 Main St", "phone_number": "555-1212", "rating": 4.5, "delivery_radius": 10, "is_open": True, "image_url": "url1"},
        {"restaurant_id": 2, "name": "Burger Barn", "cuisine": "American", "address": "456 Oak Ave", "phone_number": "555-2121", "rating": 4.0, "delivery_radius": 5, "is_open": False, "image_url": "url2"},
        # ... more restaurant data
    ],
    "Menu Items": [
        {"item_id": 1, "restaurant_id": 1, "name": "Margherita Pizza", "description": "Classic pizza", "price": 12.99, "category": "Pizza", "image_url": "url3"},
        {"item_id": 2, "restaurant_id": 1, "name": "Pepperoni Pizza", "description": "Spicy pizza", "price": 14.99, "category": "Pizza", "image_url": "url4"},
        # ... more menu item data
    ],
    "Users": [
        {"user_id": 1, "first_name": "John", "last_name": "Doe", "email": "john.doe@example.com", "phone_number": "555-5555", "address": "789 Pine Ln", "password_hash": "hashed_password1", "is_admin": False},
        # ... more user data
    ],
    "Orders": [
        {"order_id": 1, "user_id": 1, "restaurant_id": 1, "order_date": "2024-10-27 10:00:00", "total_amount": 27.98, "delivery_address": "789 Pine Ln", "order_status": "Delivered", "payment_method": "Credit Card"},
        # ... more order data
    ],
    "Order Items": [
        {"order_item_id": 1, "order_id": 1, "item_id": 1, "quantity": 1, "price": 12.99},
        {"order_item_id": 2, "order_id": 1, "item_id": 2, "quantity": 1, "price": 14.99},
        # ... more order item data
    ],
    "Payments": [
        {"payment_id": 1, "order_id": 1, "payment_date": "2024-10-27 10:05:00", "payment_amount": 27.98, "payment_status": "Success", "payment_method": "Credit Card"},
        # ... more payment data
    ],
    "Delivery Drivers": [
        {"driver_id": 1, "first_name": "Alice", "last_name": "Smith", "phone_number": "555-1234", "vehicle_type": "Car", "current_location": "Near Restaurant", "is_available": True},
        # ... more driver data
    ],

}


create_excel_from_tables(tables)