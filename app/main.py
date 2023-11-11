from flask import Flask, render_template
import requests

app = Flask(__name__)

@app.route('/')
def index():
    chuck_joke = get_chuck_norris_joke()
    return render_template('index.html', joke=chuck_joke)

def get_chuck_norris_joke():
    api_url = 'https://api.chucknorris.io/jokes/random'
    response = requests.get(api_url)
    if response.status_code == 200:
        joke_data = response.json()
        return joke_data.get('value', 'Failed to fetch Chuck Norris joke')
    else:
        return 'Failed to fetch Chuck Norris joke'

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
