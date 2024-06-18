#!/usr/bin/env python3
""" function that inserts a new docmnt in a collection """


def insert_school(mongo_collection, **kwargs):
    """  inserts a new docmt in a collection based on kwargs
    Prototype: def insert_school(mongo_collection, **kwargs)
    Returns: the new _id
    """
    return mongo_collection.insert(kwargs)