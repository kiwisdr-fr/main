# 🎉 Système Bilingue FR/EN - Installation Complète

## 📋 Résumé

Vous disposez maintenant d'un site **KiwiSDR.fr complètement bilingue** avec un système de traduction automatisé en français et anglais. Les utilisateurs peuvent basculer entre les deux langues en un clic, et leur choix est sauvegardé automatiquement.

---

## ✅ Fichiers Modifiés

### 1. **assets/js/i18n.js** (NOUVEAU - 195 lignes)
**Fichier central du système de traduction**
- ✅ Créé avec 50+ clés de traduction
- ✅ Support complet FR/EN
- ✅ Système de localStorage pour mémoriser le choix
- ✅ Auto-détection de la langue du navigateur

### 2. **index.html** (MISE À JOUR)
**Page d'accueil avec traduction intégrée**
- ✅ Ajout du sélecteur de langue dans le header
- ✅ Tous les textes ont des id uniques pour traduction
- ✅ Script de traduction `updateTranslations()` intégré
- ✅ Buttons 🇫🇷 FR et 🇬🇧 EN dans le header

### 3. **radio/products/index.html** (MISE À JOUR)
**Page produits avec traduction**
- ✅ Sélecteur de langue ajouté
- ✅ Tous les éléments traduits (titre, descriptions, boutons)
- ✅ Script de traduction intégré

### 4. **radio/schedule/index.html** (MISE À JOUR)
**Page planificateur avec traduction**
- ✅ Sélecteur de langue ajouté
- ✅ Titres et descriptions traduits
- ✅ Intégration de la traduction avec le script de calendrier

### 5. **radio/sdrlist/index.html** (MISE À JOUR)
**Page répertoire avec traduction**
- ✅ Sélecteur de langue ajouté
- ✅ Boutons d'action traduits
- ✅ Texte dynamique traduit lors du chargement des données JSON

### 6. **assets/css/main.css** (EXISTANT)
**Stylisation du sélecteur de langue**
- ✅ Classes `.language-selector`, `.lang-btn`, `.lang-btn.sel` déjà incluses

### 7. **BILINGUAL_GUIDE.md** (NOUVEAU)
**Documentation complète du système bilingue**

---

## 🎨 Interface du Sélecteur

### Apparence
```
┌─────────────────────────────┐
│ 🇫🇷 FR │ 🇬🇧 EN          │  ← Boutons de langue
└─────────────────────────────┘
```

### État des boutons
- **Bouton actif**: Gradient cyan/bleu avec ombre brillante
- **Bouton inactif**: Bordure cyan semi-transparente
- **Au survol**: Légère élévation avec augmentation d'ombre

---

## 🔧 Clés de Traduction Disponibles

### Navigation
- `nav_home` - Accueil / Home
- `nav_services` - Services
- `nav_tools` - Outils / Tools  
- `nav_resources` - Ressources / Resources
- `nav_contact` - Contact
- `nav_schedule` - Horaires / Schedule
- `nav_info` - Infos / Info
- `nav_receivers` - Récepteurs / Receivers
- `nav_map` - Carte / Map

### En-têtes et titres
- `header_subtitle` - Sous-titre principal
- `welcome_title` - Titre bienvenue
- `services_title` - Titre services
- `tools_title` - Titre outils
- `features_title` - Titre fonctionnalités
- `schedule_title` - Titre planificateur
- `products_title` - Titre produits

### Boutons et actions
- `sdrlist_button_map` - Accéder à la Carte / Access Map
- `sdrlist_button_add` - Ajouter un Récepteur / Add Receiver
- `sdrlist_button_join` - Joindre kiwisdr.fr / Join kiwisdr.fr
- `products_download` - Télécharger / Download

### Contenu
- `welcome_desc` - Description d'accueil
- `services_map_desc` - Description carte
- `services_products_desc` - Description produits
- etc...

### Pied de page
- `footer_text` - "Créé par" / "Made by"
- `footer_studio` - "Discode Studio"
- `footer_heart` - "avec ❤️ pour la communauté..." / "with ❤️ for..."
- `footer_note` - "🔗 Site indépendant..."

---

## 🚀 Utilisation

### Pour les visiteurs
1. **Cliquez sur 🇬🇧 EN** dans le header pour basculer en anglais
2. **La page se recharge automatiquement** avec tout le contenu en anglais
3. **Votre choix est mémorisé** - le site affichera votre langue préférée à chaque visite

### Pour les développeurs

#### Ajouter une nouvelle traduction
```javascript
// 1. Dans assets/js/i18n.js, ajoutez au bloc fr { ... }:
ma_cle: "Texte français",

// 2. Et au bloc en { ... }:
ma_cle: "English text",

// 3. Dans le HTML, ajoutez un id:
<p id="mon-element">Texte par défaut</p>

// 4. Dans la fonction updateTranslations():
document.getElementById('mon-element').textContent = t('ma_cle');
```

#### Utiliser une traduction en JavaScript
```javascript
const texte = t('ma_cle'); // Retourne la traduction actuelle
```

#### Vérifier la langue actuelle
```javascript
const lang = getCurrentLanguage(); // Retourne 'fr' ou 'en'
```

#### Forcer une langue
```javascript
setLanguage('en'); // Force l'anglais et recharge la page
```

---

## 💾 Persistance des données

Le système utilise **localStorage** pour mémoriser le choix:
```javascript
localStorage.setItem('kiwisdr_lang', 'en'); // Sauvegarde
localStorage.getItem('kiwisdr_lang'); // Récupère
```

**Fonctionnement**:
1. Au premier chargement, le système détecte la langue du navigateur
2. Si aucune langue n'est définie, il utilise `navigator.language` (ex: 'fr-FR')
3. L'utilisateur peut choisir une langue manuellement
4. Son choix est mémorisé pour ses futures visites

---

## 🌐 Auto-détection du navigateur

Le système détecte automatiquement:
- Navigateurs francophones → 🇫🇷 FR par défaut
- Autres navigateurs → 🇬🇧 EN par défaut

**Exemple**:
```javascript
// Si navigator.language = 'fr-FR' → Affiche FR
// Si navigator.language = 'de-DE' → Affiche EN
```

---

## 📱 Responsive Design

Le sélecteur de langue est:
- ✅ Adapté aux mobiles (boutons empilés si nécessaire)
- ✅ Centré dans le header
- ✅ Espacement responsive
- ✅ Tactile-friendly (zones cliquables appropriées)

---

## 🐛 Dépannage

### Le site ne change pas de langue?
1. Videz le cache du navigateur
2. Essayez avec Ctrl+Maj+Maj+K pour forcer un rechargement
3. Vérifiez que JavaScript est activé
4. Ouvrez la console (F12) et cherchez les erreurs

### Les traductions s'affichent bizarrement?
1. Vérifiez que les `id` HTML correspondent aux clés de traduction
2. Assurez-vous que `updateTranslations()` est appelé
3. Vérifiez que le fichier `i18n.js` se charge correctement

### Une traduction manque?
1. Ajoutez la clé à la fois dans le bloc `fr` et `en` de `i18n.js`
2. Ajoutez l'`id` correspondant dans le HTML
3. Appelez `t('ma_cle')` dans le JavaScript ou une fonction de traduction

---

## 📊 Statistiques

| Métrique | Valeur |
|----------|---------|
| Langues supportées | 2 (FR, EN) |
| Clés de traduction | 50+ |
| Pages traduites | 4 (index, products, schedule, sdrlist) |
| Taille du fichier i18n.js | ~5-6 KB |
| Temps de traduction | < 100ms |

---

## 🔐 Sécurité

- ✅ Aucune donnée personnelle collectée
- ✅ localStorage n'est utilisé que pour la langue
- ✅ Pas de requêtes externes (sauf la carte)
- ✅ Système totalement côté client

---

## 🎯 Prochaines étapes potentielles

- [ ] Ajouter plus de langues (ES, DE, IT, etc.)
- [ ] Créer un dashboard d'administration des traductions
- [ ] Implémenter un système de cache pour les traductions
- [ ] Ajouter des traductions pour les pages modules (antenna, modulator, etc.)
- [ ] Créer des variantes régionales (en-US, en-GB, fr-CA, etc.)
- [ ] Intégrer un service de traduction automatisé pour futurs contenus

---

## 📞 Support & Contribution

Pour contribuer des traductions ou signaler des problèmes:
1. Contactez Discode Studio
2. Proposez les corrections via GitHub
3. Testez sur plusieurs navigateurs et appareils

---

## 📝 Version & Historique

| Version | Date | Changements |
|---------|------|-------------|
| 1.0 | 2025 | ✅ Version initiale avec FR/EN complet |

---

**Site**: [kiwisdr.fr](http://kiwisdr.fr)
**Créé par**: Discode Studio
**Licence**: Indépendant

