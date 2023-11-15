import mysql.connector

def select_users():
    # Tạo kết nối đến database
    cnx = mysql.connector.connect(
        host='db',  # Thay bằng hostname của bạn
        user='root',  # Thay bằng username của bạn
        password='admin',  # Thay bằng password của bạn
        database='pthttm',  # Thay bằng tên database của bạn
        port=3306
    )
    
    # Tạo đối tượng cursor
    cursor = cnx.cursor()

    # Định nghĩa câu lệnh truy vấn
    query = "SELECT * FROM users"

    # Thực hiện câu truy vấn
    cursor.execute(query)

    # Lấy tất cả dữ liệu từ câu truy vấn
    result = cursor.fetchall()

    # Đóng cursor và connection
    cursor.close()
    cnx.close()

    # Trả về kết quả
    return result

print(select_users())