# secure-k8s-platform

Plateforme DevOps construite pas à pas, avec des contrôles de sécurité intégrés dès le début :
infrastructure as code (Terraform), pipeline CI/CD avec scans de sécurité, puis déploiement sur Kubernetes.

> **Projet en cours.** Ce dépôt est mis à jour au fil de mon apprentissage. L'état réel de chaque brique est indiqué ci-dessous.

## Objectif

Montrer, sur un projet public et documenté, une chaîne DevOps de bout en bout :
provisionner une infrastructure par le code, la déployer automatiquement et la contrôler (secrets, vulnérabilités, configuration).

## État d'avancement

- [ ] Phase 1 : Terraform (réseau, puis cluster Kubernetes managé)
- [ ] Phase 1 : pipeline CI (format, validation, gitleaks, scan Trivy)
- [ ] Phase 2 : déploiement avec Helm, puis GitOps avec ArgoCD
- [ ] Phase 2 : durcissement du cluster (NetworkPolicies, RBAC)
- [ ] Phase 3 : observabilité et détection

## Structure du dépôt

```
terraform/
  modules/network/   # réseau (VPC)
  envs/dev/          # environnement de développement
docs/
  journal.md         # blocages rencontrés et solutions
  cheatsheets/       # fiches réflexes
.github/workflows/   # pipelines CI
```

## Utilisation (environnement de développement)

Prérequis : Terraform (version 1.5 ou plus), un compte DigitalOcean et un jeton d'API.

```bash
export DIGITALOCEAN_TOKEN="<ton jeton, jamais dans un fichier du dépôt>"
cd terraform/envs/dev
terraform init
terraform plan
terraform apply
terraform destroy   # à lancer en fin de séance pour éviter des coûts
```

## Sécurité

- Aucun secret dans le dépôt : le jeton passe par une variable d'environnement.
- Le state Terraform et les fichiers `*.tfvars` sont exclus par `.gitignore`.
- Les contrôles de sécurité (gitleaks, Trivy) sont ajoutés au pipeline en phase 1.

## Licence

MIT
