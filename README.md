canattr
=======

Authorization for object attributes

I want the project to look something like this:

user = User.find(1)
protected_user = CanAttr.new(user)

protected_user.name = "New Name"
protected_user.password = "This should fail"
