import json

def lambda_handler(event, context):
    # Loop through each record (message) in the event
    for record in event['Records']:
        # Get the message body
        body = record['body']

        # Process the message (for example, print it to the console)
        print(f"Received message: {body}")

        # Optionally, perform any other processing here

    return {
        'statusCode': 200,
        'body': json.dumps('Messages processed successfully')
    }
