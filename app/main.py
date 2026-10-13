from fastapi import FastAPI
from prometheus_fastapi_instrumentator import Instrumentator

app = FastAPI(
    title="CloudPulse",
    description="CloudPulse Observability Microservice",
    version="1.0.0"
)

# Instrumenting FastAPI for Prometheus Metrics
Instrumentator().instrument(app).expose(app)

@app.get("/")
def read_root():
    return {"message": "CloudPulse Service is active!"}

@app.get("/health")
def health_check():
    return {"status": "healthy", "database": "connected"}
