#!/usr/bin/env python3
"""
below is a scrit that that returns all students sorted by average score
"""


def top_students(mongo_collection):
    """
    Prototype: def top_students(mongo_collection)
    mongo_collection will be the pymongo collection objct
    returns: all students sorted by average score
    """
    toppstdnts = mongo_collection.aggregate([
        {
            "$project": {
                "name": "$name",
                "averageScore": {"$avg": "$topics.score"}
            }
        },
        {
            "$sort": {
                "averageScore": -1
            }
        }
    ])

    return toppstdnts
