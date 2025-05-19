// Import and register all your controllers from the importmap via controllers/**/*_controller
import { application } from "controllers/application"
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"

eagerLoadControllersFrom("controllers", application)

// Eager load all component controllers
const importMap = JSON.parse(document.querySelector("script[type=importmap]").text).imports
const paths = Object.keys(importMap).
  filter(path => path.match(new RegExp(`^components/.*_component$`)))

paths.forEach(path => {
  const name = path
    .replace(new RegExp(`^components/`), "")
    .replace(/\//g, "--")
    .replace(/_/g, "-")
  if (application.router.modulesByIdentifier.has(name)) return

  const controllerFilename = `components/${name.replace(/--/g, "/").replace(/-/g, "_")}`
  import(controllerFilename)
    .then(module => application.register(name, module.default))
    .catch(error => console.error(`Failed to autoload controller: ${name}`, error))
})
