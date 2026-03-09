#!/bin/bash

pnpm dlx concurrently -n "Server,Models,Client" \
                      -c "yellow,green,blue" \
                      "pnpm --filter=@seeds/server run dev" \
                      "pnpm --filter=@seeds/models run dev" \
                      "pnpm --filter=@seeds/ui run dev"