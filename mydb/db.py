import cx_Oracle

USER_NAME = "STUDENT"
PASSWORD = "STUDENT"
HOST = "localhost"

def get_connection():
    return cx_Oracle.connect(
    user="STUDENT",
    password="STUDENT",
    dsn="localhost"
)

def select_all_from_facultati():
    cursor = get_connection().cursor()
    cursor.execute("SELECT * FROM Facultati_SP")
    rows = cursor.fetchall()  

    cursor.close()
    return rows

def get_max_id(table):
    cursor = get_connection().cursor()
    cursor.execute(f"SELECT MAX(ID) FROM {table}")
    rows = cursor.fetchall()  
    cursor.close()
    return rows[0][0]
def insert_into_table(table,intoString):
    conn = get_connection()
    cursor = conn.cursor()
    print(f"Insert into {table} {intoString}")
    cursor.execute(f"Insert into {table} {intoString}")
    conn.commit() 
    cursor.close()
    select_all_from_facultati()
def select_with_where(whereString, table_name):
    cursor = get_connection().cursor()
    cursor.execute(f"SELECT * FROM {table_name} {whereString}")
    rows = cursor.fetchall()  

    cursor.close()
    return rows
def delete_where(table,whereString):
    conn = get_connection()
    cursor = conn.cursor()
    print(f"DELETE FROM {table} {whereString}")
    cursor.execute(f"DELETE FROM {table} {whereString}")
    conn.commit() 
    cursor.close()

def select_specializari_facultati():
    cursor = get_connection().cursor()
    cursor.execute("select s.ID, s.nume as Specialziare,f.nume,locuri_disponibile  from specializari_sp s join facultati_sp f on f.id=s.facultate_id ")
    rows = cursor.fetchall()  
    cursor.close()
    return rows
def select_specializari_facultati_where(whereString):
    cursor = get_connection().cursor()
    cursor.execute(f"select s.ID, s.nume as Specialziare,f.nume,locuri_disponibile  from specializari_sp s join facultati_sp f on f.id=s.facultate_id {whereString}")
    rows = cursor.fetchall()  
    cursor.close()
    return rows
def selectare_id_facultate(nume):
    cursor = get_connection().cursor()
    cursor.execute(f"SELECT id FROM Facultati_SP where Nume='{nume}'")
    rows = cursor.fetchall()  
    cursor.close()
    print(rows)
    return rows[0][0]

def select_Studenti_specializari():
    cursor = get_connection().cursor()
    cursor.execute("select s.id, s.nume,s.prenume,s.spec,f.nume, s.Data_Nasterii, s.adresa, s.telefon, s.email from (Select s.id, s.nume, s.prenume, sp.nume spec, sp.Facultate_ID cod, s.Data_Nasterii, s.adresa, s.telefon, s.email from Studenti_SP s join Specializari_SP sp on s.ID_Specializare = sp.ID) s join facultati_sp f on f.id = s.cod ")
    rows = cursor.fetchall()  

    cursor.close()
    return rows
def selectare_id_specializare(nume):
    cursor = get_connection().cursor()
    cursor.execute(f"SELECT id FROM Specializari_SP where Nume='{nume}'")
    rows = cursor.fetchall()
    cursor.close()
    return rows[0][0]
def select_studenti_specializari_where(whereString):
    cursor = get_connection().cursor()
    cursor.execute(f"select s.id, s.nume,s.prenume,s.spec,f.nume, s.Data_Nasterii, s.adresa, s.telefon, s.email from (Select s.id, s.nume, s.prenume, sp.nume spec, sp.Facultate_ID cod, s.Data_Nasterii, s.adresa, s.telefon, s.email from Studenti_SP s join Specializari_SP sp on s.ID_Specializare = sp.ID) s join facultati_sp f on f.id = s.cod {whereString}")
    rows = cursor.fetchall()  
    cursor.close()
    return rows
if __name__=='__main__':
    conn = get_connection()
    print('connected')
    print(select_all_from_facultati())