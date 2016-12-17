# import rethinkdb as r

# r.db('openfaces').table_create('people').run()
# r.db('openfaces').table_create('people').run()

# r.table('tv_shows').insert({ 'name': 'Star Trek TNG' }).run()

# class PeopleRepository(object):

#     def __init__(self):
#         self._connection = r.connect('localhost', 28015).repl()

#     def create(self):

class Identity(object):
    identity = ""
    images = []

    def __init__(self, identity, images):
        self.identity = identity
        self.images = images


class IdentityImageRepository(object):
    "Identity Repository to store images of identities"
    def __init__(self):
        self.identities = []

    "adds new image of an identity"
    def add_identity(self, identity, image):
        self.identities.append(Identity(identity, [image]))

    def get_all(self):
        return self.identities

    def find(self, identity):
        for item in self.identities:
            if item.identity == identity:
                return item
        pass

    def remove_images(self, identity):
        fidentity = self.find(identity)
        if not fidentity:
            return
        fidentity.images = []

    def add_image(self, identity, image):
        fidentity = self.find(identity)
        if not fidentity:
            self.add_identity(identity,[image])
            return
        fidentity.images.append(image)

    def remove(self, identity):        
        fidentity = self.find(identity)
        if not fidentity:
            return
        self.identities.remove(fidentity)