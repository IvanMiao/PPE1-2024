# Week 02 - Git

## **Tutorials:**
  - [Official Documentation](https://git-scm.com/doc)
  - [Git in Github docs](https://docs.github.com/en/get-started/using-git/about-git)
  - [Missing-semester(MIT):Version Control(Git)](https://missing.csail.mit.edu/2020/version-control/)



## **Workflow (basic)**

A intuitive way to understand how git works:



![Git, GitHub, & Workflow Fundamentals - DEV Community](https://media.dev.to/cdn-cgi/image/width=800%2Cheight=%2Cfit=scale-down%2Cgravity=auto%2Cformat=auto/https%3A%2F%2Fdev-to-uploads.s3.amazonaws.com%2Fuploads%2Farticles%2Fvpxeexqyfvf4hw3zxtbn.png)

Typically, we use `git add`, `git status`, `git commit [-m message]`, `git push` and `git pull` in individual projects.

We use `git tag` to **mark a special commit**, indicating it as an important version of the project.

- syntax: `git tag [-a] [-m message] <tagname> [commit]`
- then push it with: `git push origin <tagname>`
