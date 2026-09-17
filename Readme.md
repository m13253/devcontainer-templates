# m13253/devcontainer-templates

My personal Dev Container templates for self use.

You are free to take anything from this repository if you find it useful, but I am not maintaining this software for the public.

That is to say, if things break, or if there are security vulnerabilities in any preinstalled software in the Dev Container, I might not have the bandwidth to notice them or fix them.

## Using my template in your project

Simply copy `src/vibe/.devcontainer` to your project.

Ideally I need to release a pre-built Docker image then [publish it](https://containers.dev/implementors/templates-distribution/) for each Dev Container template, but that means I need to constantly update them for security patches.

So, I choose the dirty way of copying and pasting.

## Creating an empty sandbox using DevPod

1. Install [DevPod](https://devpod.sh/).
2. Create a new provider. It could be a Docker / rootless-Podman Engine running either on local system or a remote SSH server.
3. Create a new workspace. Set the Git Repo source to `https://github.com/m13253/devcontainer-templates.git@subpath:src/vibe`.
4. Scroll down and choose a unique workspace name, in case you want to create multiple Dev Containers.
5. SSH into your sandbox using `ssh WORKSPACE_NAME.devpod`.

Note: If you use rootless Podman, and can’t delete your workspace after you’ve done using it, try `podman unshare rm -r ~/.devpod/agent/contexts/default/workspaces/WORKSPACE_NAME`.
