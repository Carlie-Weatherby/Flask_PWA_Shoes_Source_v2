from flask import Flask, render_template, request 
import database_manager as dbHandler 

app = Flask(__name__)

# Route for the homepage 
@app.route('/')
def index():
    shoes_data = dbHandler.listShoes()
    # return render_template('index.html')
    return render_template('index.html', shoes_listing=shoes_data)


# Route for the About page
@app.route('/about')
def about():
    return render_template('about.html')


# ---------------------- APP ENTRY POINT ----------------------

if __name__ == '__main__':
    app.run(debug=True, host = '0.0.0.0', port=5000)