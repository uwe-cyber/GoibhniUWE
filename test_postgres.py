import psycopg2
import time

no_connection = True

while no_connection:
    time.sleep(2)
    
    try:
        conn = psycopg2.connect(
                host="172.18.0.17",
                database="test",
                user="test",
                password="ing")
    except Exception as e:
        if "authentication failed" in str(e):
            no_connection = False


