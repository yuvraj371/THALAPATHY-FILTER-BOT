import asyncio
import motor.motor_asyncio

async def main():
    # Establish a MongoDB connection using motor
    client = motor.motor_asyncio.AsyncIOMotorClient("mongodb+srv://krishna527062:yuvraj178@cluster0.bki9yaw.mongodb.net/?retryWrites=true&w=majority")
    db = client["your-database-name"]

    # Perform your database operations here
    # ...

    # Close the MongoDB connection
    client.close()

# Invoke the asynchronous function using asyncio
if __name__ == "__main__":
    loop = asyncio.get_event_loop()
    loop.run_until_complete(main())
  
