# #!/usr/bin/env python3
# """
# """
# from pymongo import MongoClient

# def get_stats():
#     """
#     """
#     client = MongoClient('mongodb://127.0.0.1:27017')
#     nginx = client.logs.nginx

#     print(f"{nginx.count_documents({})} logs")
#     print("Methods:")
#     print(f"\tmethod GET: {nginx.count_documents({'method': 'GET'})}")
#     print(f"\tmethod POST: {nginx.count_documents({'method': 'POST'})}")
#     print(f"\tmethod PUT: {nginx.count_documents({'method': 'PUT'})}")
#     print(f"\tmethod PATCH: {nginx.count_documents({'method': 'PATCH'})}")
#     print(f"\tmethod DELETE: {nginx.count_documents({'method': 'DELETE'})}")
#     query = {"method": "GET", "path": "/status"}
#     print(f"{nginx.count_documents(query)} status check")
# if __name__ == "__main__":
#     get_stats()
