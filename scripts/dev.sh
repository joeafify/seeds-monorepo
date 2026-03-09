#!/bin/bash

pnpm dlx concurrently -n "Server,Models,Client" \
                      -c "yellow,green,blue" \
                      "pnpm --filter=@seed/server run dev" \
                      "pnpm --filter=@seed/models run dev" \
                      "pnpm --filter=@seed/ui run dev"