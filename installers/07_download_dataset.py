import requests
from zipfile import ZipFile

def download_file_from_google_drive(file_id, destination):
    URL = "https://docs.google.com/uc?export=download"

    session = requests.Session()

    response = session.get(URL, params={'id': file_id}, stream=True)
    token = get_confirm_token(response)

    if token:
        params = {'id': file_id, 'confirm': token}
        response = session.get(URL, params=params, stream=True)

    save_response_content(response, destination)

def get_confirm_token(response):
    for key, value in response.cookies.items():
        if key.startswith('download_warning'):
            return value
    return None

def save_response_content(response, destination):
    CHUNK_SIZE = 32768

    with open(destination, "wb") as f:
        for chunk in response.iter_content(CHUNK_SIZE):
            if chunk:  # Filter out keep-alive chunks
                f.write(chunk)
    
  
    # loading the temp.zip and creating a zip object
    with ZipFile(destination, 'r') as zObject:
      
        # Extracting all the members of the zip 
        # into a specific location.
        zObject.extractall(
            path="Dataset")

if __name__ == "__main__":
    file_id = "1OgcNKKKwjj4f2_vg8P_EJh-dnJigKPdR"
    destination = "dataset.zip"
    download_file_from_google_drive(file_id, destination)
