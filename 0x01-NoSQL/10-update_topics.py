#!/usr/bin/env python3
""" the below script that changes all topics of a school document based on the name """

def update_topics(mongo_collection, name, topics):
    """
    Prototype: def update_topics(mongo_collection, name, topics)

    mongo_collection will be the pymongo collection object
    name (string) will be the school name to update
    """
    query = {"name": name}
    new_val = {"$set": {"topics": topics}}

    mongo_collection.update_many(query, new_val)
