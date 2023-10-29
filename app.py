from flask import Flask

app = Flask(_name_)

data = [
    {"name": "Fahad Kamran", "ID": "20I-0983", "Member_ID": 1,"Fav_Food":"Biryani"},
    {"name": "Ahmad Munir", "ID": "20I-0977", "Member_ID": 2,"Fav_Food":"Pizza"},
    {"name": "Atif Munir", "ID": "19I-0600", "Member_ID": 3,"Fav_Food":"Burger"},
]

@app.route('/')
def display_data():
    table_html = "<table><tr><th>Name</th><th>ID</th><th>Member_ID</th><th>Fav_Food</th></tr>"
    for item in data:
        table_html += f"<tr><td>{item['name']}</td><td>{item['ID']}</td><td>{item['member_ID']}</td><td>{item['Fav_Food']}</td></tr>"
    table_html += "</table>"
    return table_html

if _name_ == '_main_':
    app.run(debug=True, host='0.0.0.0', port=5000)
