from fastapi import FastAPI

app = FastAPI(title="课程评价网站API")

@app.get("/")
def read_root():
    return {"message": "欢迎使用课程评价网站API"}

@app.get("/health")
def health_check():
    return {"status": "healthy"}

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)