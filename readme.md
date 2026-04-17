# 📘 Documentation de la Base de Données – test1

## 🎯 Objectif

Cette base de données permet de gérer :

* les utilisateurs (users)
* les rôles (roles)
* les étudiants (students)
* les enseignants (users avec rôle Prof)
* les cours (courses)
* les inscriptions (enrollments)
* les classes (classes)

---

## 🧩 Description des Tables

### 🔹 roles

* Définit les types d’utilisateurs (Admin, Prof, Student)
* Clé primaire : `id`

---

### 🔹 users

* Contient les informations de connexion

🔗 Relation :

* **roles (1) → users (N)**
* Un utilisateur possède un seul rôle
* Un rôle peut être attribué à plusieurs utilisateurs

---

### 🔹 students

* Informations des étudiants

🔗 Relation :

* **users (1) → students (1)**

👉 Relation **1:1** (chaque étudiant correspond à un utilisateur)

---

### 🔹 courses

* Contient les cours (Math, SQL, etc.)

🔗 Relation :

* **users (1) → courses (N)**

👉 Un enseignant peut enseigner plusieurs cours (**1:N**)

---

### 🔹 classes

* Représente les classes

🔗 Relation actuelle :

* **students (1) → classes (N)** ❌ (non recommandé)

⚠️ Amélioration :

* Une classe doit contenir plusieurs étudiants
  👉 Relation correcte : **classes (1) → students (N)**

---

### 🔹 enrollments

* Table des inscriptions des étudiants aux cours

🔗 Relations :

* **students (1) → enrollments (N)**
* **courses (1) → enrollments (N)**

---

## 🔥 Relation Many-to-Many (N:N)

* Entre **students** et **courses**

✔️ La table `enrollments` est une table de liaison (junction table)

---

## 📊 Résumé des Relations

| Relation               | Type |
| ---------------------- | ---- |
| roles → users          | 1:N  |
| users → students       | 1:1  |
| users → courses        | 1:N  |
| students → enrollments | 1:N  |
| courses → enrollments  | 1:N  |
| students ↔ courses     | N:N  |

---

## ⚠️ Problèmes à corriger

### 1. Table classes

❌ Actuellement :

```sql
classes.student_id
```

✔️ Correction recommandée :

```sql
students.class_id
```

---

### 2. Table enrollments

✔️ Bonne structure, mais il est conseillé d’ajouter :

* soit une clé primaire composite
* soit une contrainte UNIQUE

Exemple :

```sql
UNIQUE(student_id, cours_id)
```

---

### 3. Champ total_hours

❌ Type actuel :

```sql
VARCHAR
```

✔️ Correction :

```sql
INT
```

---

### 4. Nom de colonne

❌ `cours_id`
✔️ `course_id` (plus cohérent)

---

## ✅ Améliorations possibles

* Ajouter des contraintes :

  * NOT NULL
  * UNIQUE
* Améliorer la cohérence des noms
* Optimiser les relations

---

## 🎯 Conclusion

* Les types de relations sont bien utilisés :

  * 1:1 ✔️
  * 1:N ✔️
  * N:N ✔️
* La base est fonctionnelle mais peut être optimisée

---

## 🚀 Prochaine étape

* Écrire des requêtes SQL avec JOIN
* Créer un diagramme ERD
* Ajouter des contraintes avancées

---
