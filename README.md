# Rails + Inertia.js + React Starter

A modern Rails application starter template with Inertia.js, React, and AI capabilities built from scratch.

## Overview

This starter provides:
- **Rails 8.0.2+** as the backend framework
- **Inertia.js** for SPA-like behavior without API complexity
- **React 19** with Vite for modern frontend development
- **Tailwind CSS 4** with shadcn/ui components
- **RubyLLM** integration for AI capabilities
- **Solid Queue/Cache/Cable** for modern Rails features

## Setup Commands

Follow these commands in order to recreate this starter from scratch:

### 1. Initial Rails Application
```bash
rails new my_rails_app --skip-kamal --skip-javascript --skip-hotwire
cd my_rails_app
```

### 2. Add Inertia.js Support
```bash
bundle add inertia_rails
```

### 3. Initialize Node.js Environment
```bash
npm init
```

### 4. Add Vite Rails Integration
```bash
bundle add vite_rails
bundle exec vite install
```

### 5. Install Inertia.js with React and Tailwind
```bash
bin/rails generate inertia:install --framework=react \
    --no-typescript --package-manager=npm --no-interactive --tailwind \
    --vite --no-example-page
```

### 6. Add AI Capabilities
```bash
bundle add ruby_llm
bundle add ruby_llm-template
bundle add ruby_llm-schema
```

### 7. Configure RubyLLM
Create or update `config/initializers/ruby_llm.rb`:
```ruby
RubyLLM.configure do |config|
  config.openrouter_api_key = ENV.fetch('OPENROUTER_API_KEY', nil)
  config.default_model = "google/gemini-2.5-flash"
end
```

### 8. Setup shadcn/ui Components
First create `jsconfig.json`:
```json
{
  "compilerOptions": {
    "paths": {
      "@/*": ["./app/frontend/*"]
    }
  },
  "exclude": ["node_modules", "tmp"]
}
```

Then initialize shadcn/ui:
```bash
npx shadcn@latest init
```

### 9. Add Utilities (Optional)
```bash
bundle add rename
```

## Project Structure

```
my_rails_app/
├── app/
│   ├── controllers/
│   │   └── inertia_example_controller.rb
│   └── frontend/
│       ├── assets/          # Static assets (SVGs, images)
│       ├── entrypoints/     # Vite entry points
│       │   ├── application.js
│       │   ├── application.css
│       │   └── inertia.js
│       ├── lib/             # Utility functions
│       │   └── utils.js
│       └── pages/           # Inertia.js page components
│           └── InertiaExample.jsx
├── components.json          # shadcn/ui configuration
├── jsconfig.json           # JavaScript/path configuration
├── package.json            # Node.js dependencies
├── vite.config.mts         # Vite configuration
└── config/
    └── initializers/
        └── ruby_llm.rb     # AI configuration
```

## Key Dependencies

### Ruby Gems
- `inertia_rails` - Server-side adapter for Inertia.js
- `vite_rails` - Vite integration for Rails
- `ruby_llm` - AI/LLM integration framework
- `ruby_llm-template` - Template system for LLM prompts
- `ruby_llm-schema` - Schema validation for LLM responses

### Node.js Packages
- `@inertiajs/react` - React adapter for Inertia.js
- `react` & `react-dom` - React framework
- `@vitejs/plugin-react` - Vite React plugin
- `tailwindcss` - Utility-first CSS framework
- `@tailwindcss/vite` - Tailwind CSS Vite plugin
- `lucide-react` - Icon library
- `class-variance-authority` - Type-safe variant API for styling
- `clsx` & `tailwind-merge` - Conditional CSS class utilities

## Environment Variables

Create a `.env` file with:
```bash
OPENROUTER_API_KEY=your_openrouter_api_key_here
```

## Development

Start the development server:
```bash
bin/dev
```

This will start both Rails and Vite development servers concurrently.

## Features

- ✅ **Modern Rails 8** with all new features
- ✅ **Inertia.js SPA** experience without API complexity
- ✅ **React 19** with modern hooks and concurrent features
- ✅ **Vite** for fast development and optimized builds
- ✅ **Tailwind CSS 4** with latest features
- ✅ **shadcn/ui** component library ready
- ✅ **AI Integration** via RubyLLM with template system
- ✅ **Solid Queue/Cache/Cable** for background jobs and real-time features
- ✅ **TypeScript Ready** (can be enabled by changing configuration)

## Next Steps

1. Configure your preferred database in `config/database.yml`
2. Set up your AI provider API key in `.env`
3. Add shadcn/ui components as needed: `npx shadcn@latest add button`
4. Build your application pages in `app/frontend/pages/`
5. Add controllers and routes as needed

## Architecture Notes

This starter uses:
- **Inertia.js** instead of traditional Rails views or API-only setup
- **Vite** instead of Webpack/Sprockets for frontend assets
- **Tailwind CSS 4** with native CSS support
- **React 19** with modern patterns and concurrent features
- **Solid** adapters instead of Redis for caching/jobs (simpler deployment)

The result is a modern, productive Rails application with excellent DX and minimal configuration overhead.
