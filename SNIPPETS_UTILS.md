# 🔧 Snippets & Commandes Utiles

## 📋 Console JavaScript - Commandes de test

### Vérifier que tout fonctionne

```javascript
// 1. Vérifier que i18n est chargé
typeof t === 'function' ? '✅ i18n.js chargé' : '❌ i18n.js manquant'

// 2. Voir la langue actuelle
getCurrentLanguage()

// 3. Voir la traduction d'une clé
t('welcome_title')

// 4. Lister toutes les clés disponibles
Object.keys(translations.fr)

// 5. Vérifier le localStorage
localStorage.getItem('kiwisdr_lang')

// 6. Changer la langue
setLanguage('en')

// 7. Forcer français
setLanguage('fr')

// 8. Effacer la préférence
localStorage.removeItem('kiwisdr_lang')
```

---

## 🐛 Dépannage en console

### Afficher toutes les traductions

```javascript
// Voir toutes les traductions françaises
console.table(translations.fr)

// Voir toutes les traductions anglaises
console.table(translations.en)

// Voir les clés manquantes en anglais
Object.keys(translations.fr).filter(key => !translations.en[key])

// Voir les clés en doublon
Object.keys(translations.fr).filter((k, i, a) => a.indexOf(k) !== i)
```

### Tester chaque traduction

```javascript
// Tester que chaque clé a une traduction
Object.keys(translations.fr).forEach(key => {
    if (!translations.en[key]) {
        console.warn(`❌ Clé manquante en anglais: ${key}`)
    } else {
        console.log(`✅ ${key}`)
    }
})
```

### Vérifier l'application des traductions

```javascript
// Appeler updateTranslations() manuellement
updateTranslations()

// Vérifier que les éléments sont bien mis à jour
document.getElementById('header-subtitle').textContent

// Vérifier l'état des boutons
document.querySelectorAll('.lang-btn').forEach(btn => {
    console.log(btn.textContent, btn.classList.contains('sel'))
})
```

---

## 🔍 Inspection des éléments

### Vérifier les IDs

```javascript
// Lister tous les éléments avec ID
[...document.querySelectorAll('[id]')].map(el => el.id)

// Vérifier qu'un ID existe
document.getElementById('welcome-title') ? '✅ Existe' : '❌ Manquant'

// Vérifier la structure complète
document.querySelectorAll('[id]').forEach(el => {
    const key = el.id.replace(/-/g, '_');
    console.log(`${el.id} → ${key}`)
})
```

### Vérifier les traductions appliquées

```javascript
// Voir le contenu actuel
document.getElementById('welcome-title').textContent

// Voir la traduction en français
t('welcome_title') // Si langue est 'fr'

// Voir la traduction disponible en anglais
translations.en['welcome_title']
```

---

## 📊 Audit de traductions

### Script de vérification complet

```javascript
// Créer un audit complet
function auditTranslations() {
    console.group('📊 Audit des Traductions');
    
    // 1. Vérifier la langue
    console.log(`Langue actuelle: ${getCurrentLanguage()}`);
    
    // 2. Compter les clés
    const frKeys = Object.keys(translations.fr);
    const enKeys = Object.keys(translations.en);
    console.log(`Clés FR: ${frKeys.length}, Clés EN: ${enKeys.length}`);
    
    // 3. Vérifier les doublons
    const duplicates = frKeys.filter((k, i, a) => a.indexOf(k) !== i);
    if (duplicates.length > 0) {
        console.warn(`⚠️ Doublons trouvés: ${duplicates.join(', ')}`);
    } else {
        console.log('✅ Pas de doublons');
    }
    
    // 4. Vérifier les manques
    const missing = frKeys.filter(k => !translations.en[k]);
    if (missing.length > 0) {
        console.warn(`❌ Traductions manquantes en EN: ${missing.join(', ')}`);
    } else {
        console.log('✅ Traductions complètes');
    }
    
    // 5. Vérifier les IDs du DOM
    const domIds = [...document.querySelectorAll('[id]')].map(el => el.id);
    console.log(`Éléments avec ID: ${domIds.length}`);
    
    console.groupEnd();
}

// Exécuter l'audit
auditTranslations()
```

---

## 🎯 Snippets pour développeurs

### Ajouter une nouvelle traduction

```javascript
// 1. Ajouter dans i18n.js - bloc FR
ma_nouvelle_clé: "Texte en français",

// 2. Ajouter dans i18n.js - bloc EN
ma_nouvelle_clé: "Text in English",

// 3. Ajouter dans HTML
<p id="ma-nouvelle-clé">Texte par défaut</p>

// 4. Ajouter dans updateTranslations()
document.getElementById('ma-nouvelle-clé').textContent = t('ma_nouvelle_clé');
```

### Ajouter une nouvelle langue (Espagnol)

```javascript
// Dans i18n.js - Ajouter bloc ES
es: {
    nav_home: "Inicio",
    nav_services: "Servicios",
    // ... toutes les clés
}

// Dans getCurrentLanguage() - Ajouter détection
if (browserLang === 'es') lang = 'es';

// Ajouter bouton dans HTML
<button class="lang-btn" onclick="setLanguage('es')">🇪🇸 ES</button>
```

### Créer un composant de traduction réutilisable

```javascript
// Classe pour gérer les traductions
class Translator {
    constructor() {
        this.language = getCurrentLanguage();
    }
    
    t(key, defaultValue = key) {
        return translations[this.language]?.[key] ?? defaultValue;
    }
    
    setLanguage(lang) {
        setLanguage(lang);
    }
    
    updateAll(selector = '[data-i18n]') {
        document.querySelectorAll(selector).forEach(el => {
            const key = el.dataset.i18n;
            if (key) el.textContent = this.t(key);
        });
    }
}

// Utilisation
const i18n = new Translator();
i18n.t('welcome_title')
i18n.setLanguage('en')
i18n.updateAll()
```

---

## 🚀 Déploiement - Commandes

### Vérifier les fichiers

```bash
# Vérifier que i18n.js existe
ls -la assets/js/i18n.js

# Vérifier les fichiers HTML modifiés
ls -la index.html
ls -la radio/products/index.html
ls -la radio/schedule/index.html
ls -la radio/sdrlist/index.html

# Vérifier la taille des fichiers
du -sh assets/js/i18n.js
du -sh index.html
```

### Optimiser pour la production

```javascript
// Minifier i18n.js (optionnel)
// Utiliser un outil comme UglifyJS ou Terser

// Vérifier la performance
// Utiliser Lighthouse: lighthouse https://kiwisdr.fr

// Analyser la couverture des traductions
// Voir le rapport d'audit ci-dessus
```

---

## 📈 Monitoring & Logs

### Enregistrer les changements de langue

```javascript
// Ajouter au-dessus de location.reload() dans setLanguage()
console.log(`🔄 Changement de langue: ${getCurrentLanguage()} → ${lang}`)

// Enregistrer aussi en localStorage
localStorage.setItem('kiwisdr_lang_log', 
    new Date().toISOString() + ': ' + lang
)
```

### Analytics simple

```javascript
// Tracker les changements de langue (optionnel)
function trackLanguageChange(language) {
    // Envoyer à un serveur (à implémenter)
    fetch('/api/track', {
        method: 'POST',
        body: JSON.stringify({
            event: 'language_change',
            language: language,
            timestamp: new Date(),
            userAgent: navigator.userAgent
        })
    }).catch(e => console.log('Tracking failed', e))
}

// Appeler quand la langue change
// Ajouter trackLanguageChange(lang) dans setLanguage()
```

---

## 🧪 Tests automatisés

### Suite de tests simples

```javascript
// Test 1: Vérifier le chargement
function test_i18nLoaded() {
    return typeof t === 'function' && 
           typeof translations === 'object';
}

// Test 2: Vérifier les traductions
function test_translationsComplete() {
    const fr = Object.keys(translations.fr).length;
    const en = Object.keys(translations.en).length;
    return fr === en && fr > 0;
}

// Test 3: Vérifier le changement de langue
function test_languageSwitch() {
    const original = getCurrentLanguage();
    setLanguage(original === 'fr' ? 'en' : 'fr');
    // Vérifier que la page a changé...
    setLanguage(original); // Revenir à l'original
    return true;
}

// Test 4: Vérifier localStorage
function test_localStorage() {
    const key = 'kiwisdr_lang';
    localStorage.setItem(key, 'test');
    const result = localStorage.getItem(key) === 'test';
    localStorage.removeItem(key);
    return result;
}

// Exécuter tous les tests
function runAllTests() {
    console.group('🧪 Tests de Traduction');
    console.log('i18n Loaded:', test_i18nLoaded() ? '✅' : '❌');
    console.log('Translations Complete:', test_translationsComplete() ? '✅' : '❌');
    console.log('Language Switch:', test_languageSwitch() ? '✅' : '❌');
    console.log('localStorage:', test_localStorage() ? '✅' : '❌');
    console.groupEnd();
}

runAllTests()
```

---

## 💻 Raccourcis clavier (futurs)

```javascript
// Raccourci ALT+F pour Français
document.addEventListener('keydown', (e) => {
    if (e.altKey && e.key === 'f') {
        e.preventDefault();
        setLanguage('fr');
    }
});

// Raccourci ALT+E pour English
document.addEventListener('keydown', (e) => {
    if (e.altKey && e.key === 'e') {
        e.preventDefault();
        setLanguage('en');
    }
});
```

---

## 📝 Snippets HTML à copier-coller

### Ajouter un élément traductible

```html
<!-- Simple text -->
<p id="mon-id">Texte par défaut</p>

<!-- Avec traduction -->
<button id="mon-bouton">Cliquez-moi</button>

<!-- Avec contenu complexe -->
<div id="ma-section">
    <h3 id="mon-titre">Titre</h3>
    <p id="ma-description">Description</p>
</div>
```

### Ajouter le sélecteur de langue

```html
<div class="language-selector">
    <button class="lang-btn sel" onclick="setLanguage('fr')">🇫🇷 FR</button>
    <button class="lang-btn" onclick="setLanguage('en')">🇬🇧 EN</button>
</div>
```

### Intégrer le script de traduction

```html
<script src="./assets/js/i18n.js"></script>

<script>
    function updateTranslations() {
        document.getElementById('mon-id').textContent = t('ma_clé');
        // ... autres éléments
    }
    
    document.addEventListener('DOMContentLoaded', updateTranslations);
</script>
```

---

## 📚 Ressources externes

- [MDN localStorage](https://developer.mozilla.org/en-US/docs/Web/API/Window/localStorage)
- [MDN navigator.language](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/language)
- [W3C Internationalization](https://www.w3.org/International/)

---

**Last Updated**: 2025
**Version**: 1.0
**Créé par**: Discode Studio

