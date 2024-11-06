FROM python:3.12-slim-bookworm

# The installer requires curl (and certificates) to download the release archive
RUN apt-get update && apt-get install -y --no-install-recommends curl ca-certificates

# Download the latest installer
ADD https://astral.sh/uv/install.sh /uv-installer.sh

# Run the installer then remove it
RUN sh /uv-installer.sh && rm /uv-installer.sh

# Ensure the installed binary is on the `PATH`
ENV PATH="/root/.cargo/bin/:$PATH"

COPY --from=ghcr.io/astral-sh/uv:0.4.30 /uv /uvx /bin/

ADD . /workspace

WORKDIR /workspace

RUN uv sync --frozen

CMD ["python", "src/train.py"]