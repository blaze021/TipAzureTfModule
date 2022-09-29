from azure.storage.blob import BlobServiceClient
import subprocess

STORAGEACCOUNTURL = (subprocess.getoutput("terraform output storage_account_url")[1:-1].split(".net")[0]) + ".net" #"https://<STORAGE_ACCOUNT_NAME>.blob.core.windows.net"
STORAGEACCOUNTKEY = subprocess.getoutput("terraform output storage_primary_access_key")[1:-1] #"<STORAGE_ACCOUNT_KEY>"
CONTAINERNAME = subprocess.getoutput("terraform output storage_container_name")[1:-1] #"<CONTAINER_NAME>"
BLOBNAME = subprocess.getoutput("terraform output blob_name")[1:-1] #"<BLOB_FILE_NAME>"

blob_service_client_instance = BlobServiceClient(
    account_url=STORAGEACCOUNTURL, credential=STORAGEACCOUNTKEY)

blob_client_instance = blob_service_client_instance.get_blob_client(
    CONTAINERNAME, BLOBNAME, snapshot=None)

blob_data = blob_client_instance.download_blob()

with open("../file/index.html", "wb") as f:
   blob_data.readinto(f)
# data = blob_data.readall()
# print(data)
