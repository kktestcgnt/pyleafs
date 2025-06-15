import os
ADMIN_USER = os.getenv("ADMIN_USER", "")
ADMIN_PASSWORD = os.getenv("ADMIN_PASSWORD", "")
print(ADMIN_USER,ADMIN_PASSWORD)