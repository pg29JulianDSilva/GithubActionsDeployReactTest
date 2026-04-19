import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

// https://vite.dev/config/
export default defineConfig({
    base: 'https://pg29JulianDSilva.github.io/GithubActionsDeployReactTest/',
    plugins: [react()],
})
