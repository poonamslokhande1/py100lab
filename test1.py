from tkinter import*
from tkinter import messagebox
def login():
    if uname=="admin" and pwd=="123":
       messagebox.showinfo("succes","login")
    else:
         messagebox.showinfo("error","error")
root=Tk()
root.title("login")
root.geometry("350x250")
Label(root,text="login").pack(pady=10)
Label(root,text="username").pack()
uname=Entry(root)
uname.pack()
Label(root,text="Password").pack()
pwd=Entry(root,show="*")
pwd.pack()
Button(root,text="login",command=login).pack(pady=10)
root.mainloop()
