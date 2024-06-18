#!/usr/bin/env python3
""" below is a script to insert a new document into a MongoDB collection based on kwargs """


def list_all(mongo_collection):
    """  Insert a new docmnt into a MongoDB collection based on kwargs.
        Returns:
        ObjectId: The _id of the inserted document.
    """
    docmts = mongo_collection.find()

    if docmts.count() == 0:
        return []
    return docmts