import pywhatkit as kit
import datetime
# Function to send a prank message at a specific date and time
def whatsapp_prank(number, message, hour, minute):
    try:
        # Send a WhatsApp message at the specified time
        kit.sendwhatmsg(number, message, hour, minute)
        print(f"Message scheduled for {hour}:{minute}")
    except Exception as e:
        print(f"An error occurred: {e}")

# Replace the following details:
phone_number = "+917201813697"  # Your friend's phone number (e.g., +91 for India)
funny_message = "Msg 🐍"
send_hour = 13 # Hour in 24-hour format (e.g., 15 for 3 PM)
send_minute = 8 # Minute (e.g., 30 for XX:30)

# Schedule the prank message
now = datetime.datetime.now()
h=now.hour
m=now.minute + 1

now = datetime.datetime.now()
# List of funny messages and timings
messages = [
    ("Kya chal raha hai? 🤯", h, m),
    ("Kuch ajeeb lag raha hai? 😜", h, m),
    ("Python prank! 🐍", h, m)
    
]
whatsapp_prank(phone_number, funny_message, send_hour, send_minute)
# for msg, hour, minute in messages:
#     whatsapp_prank(phone_number, msg, hour, minute)
#     time.sleep(60)  # Delay between scheduling
