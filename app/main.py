from fastapi import FastAPI
from datetime import datetime, timezone

app = FastAPI(
    title="CloudPulse API",
    description="Cloud infrastructure health and observability API",
    version="0.1.0",
)


@app.get("/")
def root():
    return {
        "service": "CloudPulse",
        "status": "running",
    }


@app.get("/health")
def health():
    return {
        "status": "healthy",
        "timestamp": datetime.now(timezone.utc).isoformat(),
    }
