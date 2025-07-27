#!/bin/sh

echo "Starting Ollama server..."
ollama serve &
SERVE_PID=$!

echo "Waiting for Ollama server to be active..."
while ! ollama list | grep -q 'NAME'; do
  sleep 1
done

# Add additional pull commands for other models
ollama pull qwen2.5-coder:7b
ollama pull qwen3:8b

wait $SERVE_PID
