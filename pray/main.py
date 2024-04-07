import tkinter as tk
from tkinter import messagebox

# Create the main Tkinter window
root = tk.Tk()
root.withdraw()


def show_custom_message():
    custom_message_box = tk.Toplevel(root)
    custom_message_box.title("Custom Message Box")

    # Customize the size of the custom message box
    custom_message_box.geometry("800x500")

    # Add your widgets and content here
    label = tk.Label(custom_message_box,
                     text="¡¡¡¡You have to pray before using your computer!!!!")
    label.pack(padx=10, pady=10)

    yes_button = tk.Button(
        custom_message_box, text="Yes", command=root.destroy)
    yes_button.pack(pady=10)

    no_button = tk.Button(custom_message_box, text="No",
                          command=lambda: again(custom_message_box))
    no_button.pack(pady=10)


def again(c):
    c.destroy()
    show_custom_message()


show_custom_message()


def makeTopMost():
    root.attributes('-topmost', 1)


root.bind("<FocusOut>", makeTopMost)

# Run the Tkinter event loop
root.mainloop()
