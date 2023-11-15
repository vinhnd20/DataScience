import mysql.connector
# import fake_voice_detection.train_model
from train_model import  train_model
from model import Model
from fake_voice_regconition import fake_voice_regconition
from modelDAO import ModelDAO

class ServiceDAO:
    def __init__(self):
        self.mydb = mysql.connector.connect(
            user='root',password='admin',host='db',database='pthttm'
        )
        self.mycursor = self.mydb.cursor()

    # Insert new Model and set it as the default Model when perform train or retrain model.
    def train_or_retrain(self, samples = []):
        print(samples)
        model = train_model(samples=samples)

        # Get the sample quantity in order to check the condition to retrain model in the future.
        # sql = 'SELECT COUNT(*) FROM sample;'
        # self.mycursor.execute(sql)
        # myresult = self.mycursor.fetchall()
        # sample_quantity = myresult[0][0]

        # sql = 'UPDATE sample SET status  = 1;'
        # self.mycursor.execute(sql)
        # self.mydb.commit()

        # Insert the new Model to database.
        sql = 'INSERT INTO model VALUES (%s, %s, %s, NOW(), %s, %s, %s, %s, %s, %s, %s);'

        # print(sql)
        val = (model.id, model.name, model.path, float(model.acc), float(model.pre), float(model.recall), float(model.f1_score), model.des, model.status, model.quanlity)

        self.mycursor.execute(sql, val)
        self.mydb.commit()

        for sample_id in samples:
            sql = 'INSERT INTO model_sample (Sampleid, Modelid) VALUES (%s, %s);'
            val = (sample_id, model.id)
            self.mycursor.execute(sql, val)
            self.mydb.commit()
        

    def fake_voice_detection(self, file_path):
        # Get the active model's id.

        model_DAO = ModelDAO()
        active_model = model_DAO.getActiveModel()
        id = active_model.id

        return fake_voice_regconition(file_path, model_id= id)

