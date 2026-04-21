<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover"/>
  <title>VRC MART — Dark Luxury</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --bg-deep: #05070a;
      --bg-surface: #0e1117;
      --bg-card: #13161e;
      --border-glow: rgba(255, 255, 255, 0.05);
      --border-accent: rgba(170, 220, 255, 0.2);
      --text-primary: #f1f5f9;
      --text-secondary: #8a99b0;
      --accent-cyan: #48d6ff;
      --accent-gold: #e7c17b;
      --accent-purple: #c084fc;
      --danger: #f9735c;
      --success: #4ade80;
      --radius-card: 28px;
      --radius-sm: 14px;
      --transition: all 0.25s cubic-bezier(0.2, 0, 0, 1);
    }

    body {
      font-family: 'Inter', system-ui, sans-serif;
      background: var(--bg-deep);
      color: var(--text-primary);
      line-height: 1.5;
      overflow-x: hidden;
    }

    /* glass + modern textures */
    .glass-panel {
      background: rgba(14, 17, 23, 0.75);
      backdrop-filter: blur(12px);
      border: 1px solid rgba(72, 214, 255, 0.08);
    }

    /* scrollbar */
    ::-webkit-scrollbar {
      width: 5px;
      height: 5px;
    }
    ::-webkit-scrollbar-track {
      background: var(--bg-surface);
    }
    ::-webkit-scrollbar-thumb {
      background: var(--accent-cyan);
      border-radius: 10px;
    }

    .container {
      max-width: 1400px;
      margin: 0 auto;
      padding: 0 28px;
    }

    /* header — floating style */
    header {
      position: sticky;
      top: 0;
      z-index: 100;
      background: rgba(5, 7, 10, 0.82);
      backdrop-filter: blur(24px);
      border-bottom: 1px solid rgba(72, 214, 255, 0.12);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 28px;
      padding: 14px 0;
    }

    .brand {
      font-family: 'Plus Jakarta Sans', sans-serif;
      font-weight: 800;
      font-size: 26px;
      background: linear-gradient(135deg, #FFFFFF 20%, var(--accent-cyan) 80%);
      -webkit-background-clip: text;
      background-clip: text;
      color: transparent;
      letter-spacing: -0.02em;
    }

    .main-nav ul {
      display: flex;
      gap: 12px;
      list-style: none;
    }
    .main-nav li a {
      padding: 8px 20px;
      font-weight: 500;
      font-size: 14px;
      color: var(--text-secondary);
      border-radius: 40px;
      transition: var(--transition);
    }
    .main-nav li a:hover {
      color: white;
      background: rgba(72, 214, 255, 0.08);
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: var(--bg-card);
      border: 1px solid var(--border-glow);
      border-radius: 60px;
      padding: 8px 20px;
      gap: 12px;
      width: 280px;
      transition: var(--transition);
    }
    .search-wrap:focus-within {
      border-color: var(--accent-cyan);
      box-shadow: 0 0 12px rgba(72, 214, 255, 0.2);
    }
    .search-wrap input {
      background: transparent;
      border: none;
      outline: none;
      color: white;
      width: 100%;
      font-size: 14px;
    }
    .search-wrap button {
      background: none;
      border: none;
      color: var(--accent-cyan);
      cursor: pointer;
    }

    .icon-btn {
      width: 42px;
      height: 42px;
      background: var(--bg-card);
      border-radius: 60px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      border: 1px solid var(--border-glow);
      color: var(--text-secondary);
      transition: var(--transition);
      cursor: pointer;
    }
    .icon-btn:hover {
      border-color: var(--accent-cyan);
      color: var(--accent-cyan);
      transform: translateY(-2px);
    }
    .cart-btn {
      background: linear-gradient(145deg, #1e2a3a, #0f1722);
      border-color: rgba(72, 214, 255, 0.3);
      position: relative;
    }
    .cart-count {
      position: absolute;
      top: -6px;
      right: -6px;
      background: var(--accent-cyan);
      color: #05070a;
      font-weight: 800;
      font-size: 11px;
      width: 20px;
      height: 20px;
      border-radius: 30px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
    }

    /* hero modern */
    .hero {
      position: relative;
      min-height: 600px;
      display: flex;
      align-items: center;
      isolation: isolate;
    }
    .hero-bg {
      position: absolute;
      inset: 0;
      background: radial-gradient(circle at 80% 30%, rgba(72,214,255,0.12), transparent 70%),
                  url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=2000&q=80') center/cover no-repeat;
      opacity: 0.3;
      z-index: -1;
    }
    .hero-content {
      max-width: 620px;
    }
    .hero-badge {
      background: rgba(72, 214, 255, 0.12);
      backdrop-filter: blur(4px);
      border: 1px solid rgba(72, 214, 255, 0.25);
      border-radius: 100px;
      padding: 5px 16px;
      font-size: 12px;
      font-weight: 600;
      display: inline-flex;
      align-items: center;
      gap: 8px;
      color: var(--accent-cyan);
      margin-bottom: 24px;
    }
    .hero h1 {
      font-size: clamp(44px, 6vw, 72px);
      font-weight: 800;
      font-family: 'Plus Jakarta Sans', sans-serif;
      line-height: 1.1;
      letter-spacing: -0.02em;
    }
    .hero h1 span {
      background: linear-gradient(135deg, #FFFFFF, var(--accent-cyan));
      -webkit-background-clip: text;
      background-clip: text;
      color: transparent;
    }
    .btn-group {
      display: flex;
      gap: 16px;
      margin: 32px 0 40px;
    }
    .btn-primary {
      background: linear-gradient(105deg, var(--accent-cyan), #1e8cd7);
      border: none;
      padding: 12px 32px;
      border-radius: 40px;
      font-weight: 700;
      color: #05070a;
      cursor: pointer;
      transition: var(--transition);
    }
    .btn-primary:hover {
      transform: scale(1.02);
      box-shadow: 0 12px 28px rgba(72, 214, 255, 0.3);
    }
    .btn-outline-light {
      background: transparent;
      border: 1px solid rgba(255,255,255,0.2);
      padding: 12px 32px;
      border-radius: 40px;
      font-weight: 500;
      color: white;
      cursor: pointer;
      transition: var(--transition);
    }
    .btn-outline-light:hover {
      border-color: var(--accent-cyan);
      background: rgba(72,214,255,0.05);
    }

    /* category chips */
    .cat-filter {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      gap: 12px;
      margin-bottom: 48px;
    }
    .cat-pill {
      background: var(--bg-card);
      border: 1px solid var(--border-glow);
      border-radius: 60px;
      padding: 10px 24px;
      font-size: 14px;
      font-weight: 500;
      display: inline-flex;
      align-items: center;
      gap: 10px;
      cursor: pointer;
      transition: var(--transition);
      color: var(--text-secondary);
    }
    .cat-pill i {
      color: var(--accent-cyan);
    }
    .cat-pill.active, .cat-pill:hover {
      background: rgba(72, 214, 255, 0.1);
      border-color: var(--accent-cyan);
      color: white;
    }

    /* product grid fresh */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
      gap: 28px;
    }
    .product-card {
      background: var(--bg-card);
      border: 1px solid var(--border-glow);
      border-radius: var(--radius-card);
      overflow: hidden;
      transition: var(--transition);
      backdrop-filter: blur(4px);
    }
    .product-card:hover {
      transform: translateY(-8px);
      border-color: rgba(72, 214, 255, 0.4);
      box-shadow: 0 24px 48px -12px rgba(0,0,0,0.6);
    }
    .product-img-wrap {
      position: relative;
      overflow: hidden;
      height: 240px;
    }
    .product-img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: transform 0.45s ease;
    }
    .product-card:hover img {
      transform: scale(1.05);
    }
    .wish-overlay {
      position: absolute;
      top: 16px;
      right: 16px;
      background: rgba(0,0,0,0.55);
      backdrop-filter: blur(6px);
      width: 36px;
      height: 36px;
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      border: none;
      color: #ddd;
      cursor: pointer;
      transition: var(--transition);
    }
    .wish-overlay.active {
      color: var(--danger);
    }
    .product-body {
      padding: 20px;
    }
    .product-title {
      font-weight: 700;
      font-size: 18px;
      margin: 6px 0 8px;
    }
    .price-row {
      display: flex;
      gap: 12px;
      align-items: baseline;
      margin: 12px 0;
    }
    .price {
      font-size: 22px;
      font-weight: 800;
      color: var(--accent-cyan);
    }
    .old-price {
      font-size: 14px;
      color: var(--text-secondary);
      text-decoration: line-through;
    }
    .add-btn {
      width: 100%;
      background: rgba(72, 214, 255, 0.1);
      border: 1px solid rgba(72,214,255,0.3);
      padding: 12px;
      border-radius: 60px;
      font-weight: 600;
      color: white;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      cursor: pointer;
      transition: var(--transition);
    }
    .add-btn:hover {
      background: var(--accent-cyan);
      color: #05070a;
      border-color: transparent;
    }

    /* flash sale redesign */
    .deal-card {
      display: grid;
      grid-template-columns: 1fr 1fr;
      background: linear-gradient(125deg, #0f121b, #07090f);
      border-radius: 42px;
      border: 1px solid rgba(72, 214, 255, 0.2);
      overflow: hidden;
    }
    .deal-content {
      padding: 48px;
    }
    .deal-tag {
      display: inline-flex;
      background: rgba(249, 115, 92, 0.15);
      color: #f9735c;
      padding: 6px 16px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 12px;
      margin-bottom: 20px;
    }
    .deal-title {
      font-size: 44px;
      font-weight: 800;
      line-height: 1.2;
    }
    .timer {
      display: flex;
      gap: 16px;
      margin: 28px 0;
    }
    .time-box {
      background: var(--bg-deep);
      border-radius: 18px;
      padding: 12px 18px;
      text-align: center;
      min-width: 70px;
      border: 1px solid rgba(72,214,255,0.2);
    }
    .time-num {
      font-size: 32px;
      font-weight: 800;
      color: var(--accent-cyan);
    }
    .deal-pricing .deal-price {
      font-size: 44px;
      font-weight: 800;
      color: white;
    }

    /* newsletter */
    .newsletter-section {
      background: radial-gradient(circle at 20% 30%, #0b1a2a, var(--bg-surface));
      border-radius: 48px;
      padding: 64px;
      text-align: center;
      border: 1px solid rgba(72,214,255,0.15);
    }

    /* footer modern */
    footer {
      border-top: 1px solid rgba(72,214,255,0.1);
      padding: 60px 0 30px;
      margin-top: 40px;
    }

    /* drawer */
    .fav-drawer {
      background: #0b0f17;
      border-left: 1px solid var(--accent-cyan);
    }
    .toast {
      background: #1a202c;
      border-left: 4px solid var(--accent-cyan);
    }

    /* responsive */
    @media (max-width: 880px) {
      .main-nav { display: none; }
      .mobile-toggle { display: inline-flex; }
      .deal-card { grid-template-columns: 1fr; }
      .newsletter-section { padding: 40px 24px; }
    }
    .mobile-toggle {
      display: none;
      background: var(--bg-card);
      border: 1px solid var(--border-glow);
      width: 42px;
      height: 42px;
      border-radius: 60px;
      align-items: center;
      justify-content: center;
      color: white;
    }
  </style>
</head>
<body>

<header>
  <div class="container header-inner">
    <div style="display: flex; align-items: center; gap: 18px;">
      <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
      <div class="brand">VRC MART</div>
    </div>
    <nav class="main-nav">
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#categories">Discover</a></li>
        <li><a href="#products-section">Essentials</a></li>
        <li><a href="#deals">Drops</a></li>
      </ul>
    </nav>
    <div style="display: flex; gap: 12px; align-items: center;">
      <div class="search-wrap">
        <i class="fas fa-search"></i>
        <input type="text" id="searchInput" placeholder="Search luxury goods...">
        <button id="searchBtn"><i class="fas fa-arrow-right"></i></button>
      </div>
      <div style="position: relative;" id="authBtnWrap">
        <button class="icon-btn" id="authBtn"><i class="far fa-user"></i></button>
        <div class="user-dropdown" id="userDropdown" style="position: absolute; right: 0; top: 52px; background: #0e1117; border-radius: 20px; border: 1px solid rgba(72,214,255,0.2); width: 220px; display: none; flex-direction: column; z-index: 200;">
          <div style="padding: 16px;" id="dropdownInfo">Sign in to access</div>
          <button id="logoutBtn" style="background: none; border-top: 1px solid rgba(255,255,255,0.05); padding: 12px; text-align: left; color: #f9735c;">Sign Out</button>
        </div>
      </div>
      <button class="icon-btn fav-btn" id="favDrawerBtn"><i class="far fa-heart"></i><span class="fav-badge" id="favBadge" style="position: absolute; top: -4px; right: -4px; background: var(--danger); font-size: 10px; border-radius: 20px; width: 18px; display: none;">0</span></button>
      <button class="icon-btn cart-btn" id="cartBtn"><i class="fas fa-shopping-bag"></i><span class="cart-count" id="cartCount">0</span></button>
    </div>
  </div>
  <div id="mobileMenu" style="display: none; background: #0b0f17; padding: 20px;">
    <ul style="list-style: none; display: flex; flex-direction: column; gap: 12px;">
      <li><a href="#">Home</a></li><li><a href="#categories">Categories</a></li><li><a href="#products-section">Shop</a></li><li><a href="#deals">Deals</a></li>
    </ul>
  </div>
</header>

<main>
  <section class="hero">
    <div class="hero-bg"></div>
    <div class="container">
      <div class="hero-content">
        <div class="hero-badge"><i class="fas fa-sparkle"></i> FW25 CAPSULE</div>
        <h1>Where <span>luxury meets</span> innovation</h1>
        <p style="color: var(--text-secondary); margin-top: 16px;">Curated drops, iconic designs, and unparalleled craftsmanship — redefine your style.</p>
        <div class="btn-group">
          <button class="btn-primary" id="shopNow">Explore collection →</button>
          <button class="btn-outline-light" id="exploreDeals">Flash Sale</button>
        </div>
      </div>
    </div>
  </section>

  <section class="section" id="categories" style="padding: 60px 0 40px;">
    <div class="container">
      <div style="text-align: center; margin-bottom: 40px;">
        <span style="color: var(--accent-cyan); font-weight: 600; letter-spacing: 1px;">EDITORIAL PICKS</span>
        <h2 style="font-size: 42px; font-weight: 700;">Shop by mood</h2>
      </div>
      <div class="cat-filter" id="categoriesGrid"></div>
    </div>
  </section>

  <section class="section" id="products-section" style="padding-top: 0;">
    <div class="container">
      <div class="products-grid" id="productsGrid"></div>
    </div>
  </section>

  <section id="deals" class="section" style="padding: 40px 0;">
    <div class="container">
      <div class="deal-card">
        <div class="deal-content">
          <div class="deal-tag"><i class="fas fa-bolt"></i> limited run</div>
          <div class="deal-title">MacBook Air M2<br>Ultradrive</div>
          <p style="color: var(--text-secondary); margin: 16px 0;">Next‑gen performance, 18h battery, and a design that defies limits.</p>
          <div class="timer" id="timerContainer">
            <div class="time-box"><div class="time-num" id="dealDays">0</div><div style="font-size: 12px;">Days</div></div>
            <div class="time-box"><div class="time-num" id="dealHours">00</div><div style="font-size: 12px;">Hrs</div></div>
            <div class="time-box"><div class="time-num" id="dealMinutes">00</div><div style="font-size: 12px;">Mins</div></div>
            <div class="time-box"><div class="time-num" id="dealSeconds">00</div><div style="font-size: 12px;">Sec</div></div>
          </div>
          <div class="deal-pricing"><span class="deal-price">$999</span><span style="text-decoration: line-through; color: gray;">$1,299</span><span style="background: #f9735c; border-radius: 20px; padding: 4px 12px;">-23%</span></div>
          <button class="btn-primary" id="buyDeal" style="margin-top: 28px;">Secure now <i class="fas fa-lock"></i></button>
        </div>
        <div class="deal-img-side" style="background: url('https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80') center/cover;"></div>
      </div>
    </div>
  </section>

  <section class="section">
    <div class="container">
      <div class="newsletter-section">
        <i class="fas fa-envelope" style="font-size: 40px; color: var(--accent-cyan); margin-bottom: 16px;"></i>
        <h3 style="font-size: 32px;">Insider access</h3>
        <p>First looks, private sales, and trend reports — straight to your inbox.</p>
        <form id="newsletterForm" style="display: flex; gap: 12px; justify-content: center; flex-wrap: wrap; margin-top: 24px;">
          <input type="email" id="newsletterEmail" placeholder="your@email.com" style="background: #11161f; border: 1px solid #2a3342; border-radius: 80px; padding: 14px 24px; width: 300px; color: white;">
          <button class="btn-primary" type="submit">Subscribe</button>
        </form>
        <div id="newsletterMsg" style="margin-top: 16px;"></div>
      </div>
    </div>
  </section>
</main>

<footer>
  <div class="container">
    <div style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 40px;">
      <div><div class="brand" style="font-size: 22px;">VRC MART</div><p style="color: #7c8aa0; max-width: 260px;">Defining modern e‑commerce with a futuristic edge.</p></div>
      <div><h4>Discover</h4><div style="display: flex; flex-direction: column; gap: 8px;"><a href="#" style="color: #7c8aa0;">New arrivals</a><a href="#" style="color: #7c8aa0;">Limited</a></div></div>
      <div><h4>Support</h4><div style="display: flex; flex-direction: column; gap: 8px;"><a href="#" style="color: #7c8aa0;">FAQs</a><a href="#" style="color: #7c8aa0;">Returns</a></div></div>
    </div>
    <div style="border-top: 1px solid #1e2532; margin-top: 48px; padding-top: 28px; text-align: center; color: #5f6c84;">© 2025 VRC MART — Cyber aesthetics</div>
  </div>
</footer>

<div class="toast" id="toast" style="position: fixed; bottom: 30px; right: 30px; background: #11161f; border-radius: 60px; padding: 12px 24px; display: flex; gap: 10px; transform: translateX(200px); transition: 0.3s; z-index: 999;"><i class="fas fa-check-circle" style="color: var(--success);"></i><span id="toastMsg">Added</span></div>

<div class="drawer-overlay" id="drawerOverlay" style="position: fixed; inset:0; background: rgba(0,0,0,0.6); backdrop-filter: blur(5px); z-index: 300; opacity:0; pointer-events: none;"></div>
<aside class="fav-drawer" id="favDrawer" style="position: fixed; right:0; top:0; width: 380px; height: 100%; background: #0c0f16; z-index: 301; transform: translateX(100%); transition: 0.3s; display: flex; flex-direction: column;">
  <div style="padding: 24px; display: flex; justify-content: space-between;"><span style="font-weight: 700;">Wishlist</span><button id="drawerClose" style="background: none; border: none; color: white;"><i class="fas fa-times"></i></button></div>
  <div id="drawerBody" style="flex:1; overflow: auto; padding: 0 20px;"></div>
  <div style="padding: 20px;"><button id="clearFavBtn" style="width:100%; background: #1f2a36; border: none; padding: 12px; border-radius: 40px;">Clear all</button></div>
</aside>

<script>
  // ---------- PRODUCT DATA ----------
  const CATEGORIES = [
    { id:'phones', name:'Phones', icon:'fa-mobile-alt' },{ id:'laptops', name:'Laptops', icon:'fa-laptop' },
    { id:'clothing', name:'Clothing', icon:'fa-tshirt' },{ id:'gadgets', name:'Audio', icon:'fa-headphones' },
    { id:'footwear', name:'Footwear', icon:'fa-shoe-prints' },{ id:'accessories', name:'Wearables', icon:'fa-watch' }
  ];
  const PRODUCTS = [
    { id:1, title:'iPhone 15 Pro', price:1099, oldPrice:1299, rating:5, reviews:204, badge:'New', img:'https://images.unsplash.com/photo-1695048133142-1a20484d2569?auto=format&fit=crop&w=600&q=80', category:'phones' },
    { id:2, title:'MacBook Pro M3', price:1999, rating:5, reviews:112, img:'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80', category:'laptops' },
    { id:3, title:'AirPods Max', price:549, oldPrice:649, rating:4, reviews:376, badge:'-15%', img:'https://images.unsplash.com/photo-1618367588411-d9a55fccdee4?auto=format&fit=crop&w=600&q=80', category:'gadgets' },
    { id:4, title:'Yeezy 350 V2', price:230, rating:5, reviews:89, img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category:'footwear' },
    { id:5, title:'Sony A7R V', price:3499, rating:5, reviews:44, img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category:'gadgets' },
    { id:6, title:'Dior Sauvage', price:125, rating:5, reviews:230, img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category:'accessories' },
    { id:7, title:'Onyx Backpack', price:89, oldPrice:129, rating:4, reviews:67, img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category:'accessories' },
    { id:8, title:'Bose QC Ultra', price:429, rating:5, reviews:98, img:'https://images.unsplash.com/photo-1600185365926-3a2ce3cdb9eb?auto=format&fit=crop&w=600&q=80', category:'gadgets' }
  ];

  let cartCount = 0, activeCategory = 'all', favorites = {};
  const cartCountEl = document.getElementById('cartCount'), searchInput = document.getElementById('searchInput');
  const toastEl = document.getElementById('toast'), toastMsg = document.getElementById('toastMsg');
  const favBadge = document.getElementById('favBadge'), drawerBody = document.getElementById('drawerBody'), drawerOverlay = document.getElementById('drawerOverlay'), favDrawer = document.getElementById('favDrawer');

  function showToast(msg) { toastMsg.innerText = msg; toastEl.style.transform = 'translateX(0)'; setTimeout(() => toastEl.style.transform = 'translateX(200px)', 2500); }
  function updateCartBadge() { cartCountEl.innerText = cartCount; cartCountEl.style.display = cartCount ? 'inline-flex' : 'none'; }
  function updateFavBadge() { let c = Object.keys(favorites).length; favBadge.innerText = c; favBadge.style.display = c ? 'inline-flex' : 'none'; }

  function renderCategories() {
    const grid = document.getElementById('categoriesGrid'); grid.innerHTML = '';
    const allBtn = document.createElement('button'); allBtn.className = `cat-pill ${activeCategory === 'all' ? 'active' : ''}`; allBtn.innerHTML = '<i class="fas fa-th"></i> All'; allBtn.onclick = () => { activeCategory='all'; renderCategories(); renderProducts(PRODUCTS); }; grid.appendChild(allBtn);
    CATEGORIES.forEach(c => { let btn = document.createElement('button'); btn.className = `cat-pill ${activeCategory === c.id ? 'active' : ''}`; btn.innerHTML = `<i class="fas ${c.icon}"></i> ${c.name}`; btn.onclick = () => { activeCategory=c.id; searchInput.value=''; renderCategories(); filterByCat(c.id); }; grid.appendChild(btn); });
  }
  function filterByCat(catId) { const filtered = PRODUCTS.filter(p => p.category === catId); renderProducts(filtered); }
  function renderProducts(list) {
    const grid = document.getElementById('productsGrid'); if(!list.length){ grid.innerHTML='<div style="text-align:center;">No results</div>'; return; }
    grid.innerHTML = list.map(p => `<div class="product-card"><div class="product-img-wrap"><img src="${p.img}" alt="${p.title}"><button class="wish-overlay" data-wish="${p.id}"><i class="far fa-heart"></i></button></div><div class="product-body"><div class="product-title">${p.title}</div><div class="price-row"><span class="price">$${p.price}</span>${p.oldPrice ? `<span class="old-price">$${p.oldPrice}</span>` : ''}</div><button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add to cart</button></div></div>`).join('');
    document.querySelectorAll('.add-btn').forEach(btn => btn.addEventListener('click', (e) => { let id = parseInt(btn.dataset.id); addToCart(id); }));
    document.querySelectorAll('.wish-overlay').forEach(btn => { let pid = parseInt(btn.dataset.wish); if(favorites[pid]) btn.classList.add('active'); btn.addEventListener('click',()=>toggleFavorite(pid)); });
  }
  function addToCart(id) { cartCount++; updateCartBadge(); showToast('✓ Added to cart'); }
  function toggleFavorite(pid) { if(favorites[pid]) delete favorites[pid]; else favorites[pid]=true; updateFavBadge(); renderProducts(PRODUCTS.filter(p=>activeCategory==='all'?true:p.category===activeCategory)); renderDrawer(); }
  function renderDrawer() { let ids = Object.keys(favorites); drawerBody.innerHTML = ids.length ? ids.map(id=>{ let p=PRODUCTS.find(x=>x.id==parseInt(id)); return `<div style="display:flex; gap:12px; margin-bottom:16px;"><img src="${p.img}" width="50" style="border-radius:12px;"><div><div>${p.title}</div><div>$${p.price}</div><button class="fav-remove-btn" data-id="${p.id}" style="background:none; color: var(--danger);">Remove</button></div></div>`; }).join('') : '<div style="text-align:center; padding:40px;">No favorites</div>';
    document.querySelectorAll('.fav-remove-btn').forEach(btn=>btn.addEventListener('click',()=>{ toggleFavorite(parseInt(btn.dataset.id)); renderDrawer(); }));
  }
  function openDrawer() { favDrawer.style.transform = 'translateX(0)'; drawerOverlay.style.opacity = '1'; drawerOverlay.style.pointerEvents = 'all'; renderDrawer(); }
  function closeDrawer() { favDrawer.style.transform = 'translateX(100%)'; drawerOverlay.style.opacity = '0'; drawerOverlay.style.pointerEvents = 'none'; }
  document.getElementById('favDrawerBtn').addEventListener('click', openDrawer); document.getElementById('drawerClose').addEventListener('click', closeDrawer); drawerOverlay.addEventListener('click', closeDrawer);
  document.getElementById('clearFavBtn').addEventListener('click',()=>{ favorites={}; updateFavBadge(); renderProducts(PRODUCTS); renderDrawer(); closeDrawer(); });
  document.getElementById('searchBtn').addEventListener('click',()=>{ let val=searchInput.value.toLowerCase(); let filtered=PRODUCTS.filter(p=>p.title.toLowerCase().includes(val)); renderProducts(filtered); });
  document.getElementById('shopNow').addEventListener('click',()=>document.getElementById('products-section').scrollIntoView({behavior:'smooth'}));
  document.getElementById('exploreDeals').addEventListener('click',()=>document.getElementById('deals').scrollIntoView({behavior:'smooth'}));
  document.getElementById('buyDeal').addEventListener('click',()=>{ cartCount++; updateCartBadge(); showToast('MacBook added!'); });
  document.getElementById('newsletterForm').addEventListener('submit',(e)=>{ e.preventDefault(); document.getElementById('newsletterMsg').innerHTML='<span style="color: var(--accent-cyan);">✨ Subscribed! Welcome gift incoming.</span>'; setTimeout(()=>document.getElementById('newsletterMsg').innerHTML='',3000); });
  function startTimer(){ let target=Date.now() + (36*3600000); setInterval(()=>{ let diff=Math.max(0,target-Date.now()); document.getElementById('dealDays').innerText=Math.floor(diff/86400000); document.getElementById('dealHours').innerText=String(Math.floor((diff%86400000)/3600000)).padStart(2,'0'); document.getElementById('dealMinutes').innerText=String(Math.floor((diff%3600000)/60000)).padStart(2,'0'); document.getElementById('dealSeconds').innerText=String(Math.floor((diff%60000)/1000)).padStart(2,'0'); },1000); }
  startTimer(); renderCategories(); renderProducts(PRODUCTS); updateCartBadge(); updateFavBadge();
  document.getElementById('mobileToggle').addEventListener('click',()=>{ let m=document.getElementById('mobileMenu'); m.style.display=m.style.display==='block'?'none':'block'; });
  // AUTH SIMULATED MODERN (light version)
  const authBtn = document.getElementById('authBtn'), userDropdown = document.getElementById('userDropdown');
  let loggedIn = false;
  authBtn.addEventListener('click',()=>{ if(!loggedIn){ alert('✨ Demo: Welcome! (guest mode active)'); loggedIn=true; authBtn.innerHTML='<i class="fas fa-user-astronaut"></i>'; userDropdown.style.display='flex'; document.getElementById('dropdownInfo').innerHTML='<div>Guest User</div>'; } else { userDropdown.style.display=userDropdown.style.display==='flex'?'none':'flex'; } });
  document.getElementById('logoutBtn')?.addEventListener('click',()=>{ loggedIn=false; authBtn.innerHTML='<i class="far fa-user"></i>'; userDropdown.style.display='none'; showToast('Signed out'); });
  document.addEventListener('click',(e)=>{ if(!authBtn.contains(e.target) && !userDropdown.contains(e.target)) userDropdown.style.display='none'; });
</script>
</body>
</html>
