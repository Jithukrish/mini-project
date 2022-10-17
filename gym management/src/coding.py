from flask import *
from src.dbconnection import *
from _datetime import *

app = Flask(__name__)


@app.route("/")
def log():
    return render_template("login.html")

#LOGIN FUNCTION
@app.route('/login', methods=['post', 'get'])
def login():
    username = request.form['textfield']
    password = request.form['textfield2']
    qry = "SELECT * FROM `login` WHERE `username`=%s AND `password`=%s"
    val = (username, password)
    res = selectone(qry, val)

    if res is None:
        return '''<script>alert("invalid"); window.location="/"</script>'''
    elif res['type'] == 'admin':
        return redirect('/admhome')
    elif res['type'] == 'user':
        return redirect('/userhome')
    else:
        return '''<script>alert("invalid"); window.location="/"</script>'''



@app.route("/admhome")
def admhome():
    return render_template("admin home.html")
