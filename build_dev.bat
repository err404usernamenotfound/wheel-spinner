@echo off

REM Remove the existing dist directory
rmdir /s /q dist

REM Set the NODE_OPTIONS environment variable to use the legacy OpenSSL provider
set NODE_OPTIONS=--openssl-legacy-provider

REM Run the Webpack build
call npx webpack --config build/dev.config.js