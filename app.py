from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_cloud():
    return 'Hello Barnes ECS Container!'

# This block ensures that the Flask development server
# is only started when the script is run directly.
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
