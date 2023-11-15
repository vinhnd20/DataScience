

#upload file
app.config['UPLOAD_FOLDER'] = 'Sounds'  # Thư mục lưu trữ tệp tải lên

@app.route('/upload', methods=['POST'])
@checkUserLogin
def upload_file():
    
    result = ''
    if 'audio_data' not in request.files:
        result =  'Không có tệp nào được tải lên.'