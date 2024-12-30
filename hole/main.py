from nicegui import ui, app
from fastapi import FastAPI, Request
from icecream import ic

fastapi_app = FastAPI()

@ui.page("/")
def index():
    ui.label("Hello from NiceGUI integrated with FastAPI!")
    ui.button("Click Me", on_click=lambda: ui.notify("Button Clicked!"))

@fastapi_app.get("/omi-transcript")
def omi_transcript(request: Request):
    ic(request)
    return "foo"

ui.run_with(fastapi_app)
