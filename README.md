# intellij-flexible-elixir-monorepo

Small [Mix workspace](https://hexdocs.pm/workspace/readme.html) fixture: one **Phoenix** app (`demo_web`) depends on a local library (`demo_lib`) via `path:`. Use it to exercise IntelliJ Elixir (multi-root modules, cross-project references, etc.).

## Layout

- **Root** — `mix.exs` is the workspace host (`workspace: [type: :workspace]`, `lockfile: "workspace.lock"`). No application code (`elixirc_paths: []`).
- **`packages/demo_lib`** — library (**B**), `workspace: [type: :project]`.
- **`packages/demo_web`** — Phoenix app (**A**), `{:demo_lib, path: "../demo_lib"}`, `workspace: [type: :project]`.

All projects share the root **`workspace.lock`** (`lockfile: "../../workspace.lock"` in each package).

## Commands

```bash
# From repo root (workspace tooling)
mix deps.get
mix workspace.graph

# Library tests
cd packages/demo_lib && mix test

# Web app: install assets once, then test or serve
cd packages/demo_web
mix setup   # first time: npm/tailwind/esbuild
mix test
mix phx.server
```

## Dependency graph

`demo_web` → `demo_lib` (path). Run `mix workspace.graph` from the root to print the workspace graph (requires `.workspace.exs`; this repo uses a minimal `[]` config).
