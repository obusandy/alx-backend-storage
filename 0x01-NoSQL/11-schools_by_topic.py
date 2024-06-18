#!/usr/bin/env python3
"""
the below script returns the list of school having a specific topic
"""
def schools_by_topic(mongo_collection, topic):
    """
    topic (string) will be topic searched
        Prototype: def schools_by_topic(mongo_collection, topic)
    returns: the list of school having a specific topic
    """
    docs = mongo_collection.find({"topics": {"$in": [topic]}})
    return docs
