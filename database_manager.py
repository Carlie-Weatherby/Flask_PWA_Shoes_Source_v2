import sqlite3 

def listShoes():
    con = sqlite3.connect('.database/data_source.db')
    con.row_factory = sqlite3.Row
    cur = con.cursor()
    
    query = '''
        SELECT shoe.*, model.model_name, model.description AS model_desc
        FROM shoe
        LEFT JOIN model on shoe.model_id = model.model_id;
        '''
    cur.execute(query)   
    data = cur.fetchall()

    # Debug: Check if data is fetched
    # if data:
    #     print(f"✅ Fetched {len(data)} rows from the database.")
    #     for idx, row in enumerate(data):
    #         print(f"Row {idx+1}: {dict(row)}")  # Explicit dict conversion
    # else:
    #     print("⚠️ No data returned from query.")
    
    con.close()    
    return data 
