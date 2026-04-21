<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
  <title>VRC MART — Premium Store</title>
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
      --text-primary: #f1f5f9;
      --text-secondary: #8a99b0;
      --accent-cyan: #48d6ff;
      --accent-purple: #c084fc;
      --danger: #f9735c;
      --success: #4ade80;
      --radius-card: 24px;
      --transition: all 0.25s cubic-bezier(0.2, 0, 0, 1);
    }

    body {
      font-family: 'Inter', system-ui, sans-serif;
      background: var(--bg-deep);
      color: var(--text-primary);
      line-height: 1.5;
      overflow-x: hidden;
    }

    ::-webkit-scrollbar { width: 5px; height: 5px; }
    ::-webkit-scrollbar-track { background: var(--bg-surface); }
    ::-webkit-scrollbar-thumb { background: var(--accent-cyan); border-radius: 10px; }

    .container { max-width: 1400px; margin: 0 auto; padding: 0 28px; }

    /* Header */
    header {
      position: sticky;
      top: 0;
      z-index: 100;
      background: rgba(5, 7, 10, 0.85);
      backdrop-filter: blur(20px);
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

    .main-nav ul { display: flex; gap: 12px; list-style: none; }
    .main-nav li a {
      padding: 8px 20px;
      font-weight: 500;
      font-size: 14px;
      color: var(--text-secondary);
      border-radius: 40px;
      transition: var(--transition);
    }
    .main-nav li a:hover { color: white; background: rgba(72, 214, 255, 0.08); }

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
      position: relative;
    }
    .icon-btn:hover { border-color: var(--accent-cyan); color: var(--accent-cyan); transform: translateY(-2px); }
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
    .fav-badge {
      position: absolute;
      top: -6px;
      right: -6px;
      background: var(--danger);
      color: white;
      font-weight: 800;
      font-size: 10px;
      width: 18px;
      height: 18px;
      border-radius: 30px;
      display: none;
      align-items: center;
      justify-content: center;
    }

    /* Hero */
    .hero {
      position: relative;
      min-height: 560px;
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
    .hero-content { max-width: 620px; }
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
    .btn-group { display: flex; gap: 16px; margin: 32px 0 40px; }
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
    .btn-primary:hover { transform: scale(1.02); box-shadow: 0 12px 28px rgba(72, 214, 255, 0.3); }
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
    .btn-outline-light:hover { border-color: var(--accent-cyan); background: rgba(72,214,255,0.05); }

    /* Categories */
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
    .cat-pill i { color: var(--accent-cyan); }
    .cat-pill.active, .cat-pill:hover { background: rgba(72, 214, 255, 0.1); border-color: var(--accent-cyan); color: white; }

    /* Products Grid */
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
    }
    .product-card:hover { transform: translateY(-8px); border-color: rgba(72, 214, 255, 0.4); box-shadow: 0 24px 48px -12px rgba(0,0,0,0.6); }
    .product-img-wrap { position: relative; overflow: hidden; height: 240px; }
    .product-img-wrap img { width: 100%; height: 100%; object-fit: cover; transition: transform 0.45s ease; }
    .product-card:hover img { transform: scale(1.05); }
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
    .wish-overlay.active { color: var(--danger); }
    .product-body { padding: 20px; }
    .product-title { font-weight: 700; font-size: 18px; margin: 6px 0 8px; }
    .price-row { display: flex; gap: 12px; align-items: baseline; margin: 12px 0; }
    .price { font-size: 22px; font-weight: 800; color: var(--accent-cyan); }
    .old-price { font-size: 14px; color: var(--text-secondary); text-decoration: line-through; }
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
    .add-btn:hover { background: var(--accent-cyan); color: #05070a; border-color: transparent; }

    /* Deal Section */
    .deal-card {
      display: grid;
      grid-template-columns: 1fr 1fr;
      background: linear-gradient(125deg, #0f121b, #07090f);
      border-radius: 42px;
      border: 1px solid rgba(72, 214, 255, 0.2);
      overflow: hidden;
    }
    .deal-content { padding: 48px; }
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
    .deal-title { font-size: 44px; font-weight: 800; line-height: 1.2; }
    .timer { display: flex; gap: 16px; margin: 28px 0; }
    .time-box {
      background: var(--bg-deep);
      border-radius: 18px;
      padding: 12px 18px;
      text-align: center;
      min-width: 70px;
      border: 1px solid rgba(72,214,255,0.2);
    }
    .time-num { font-size: 32px; font-weight: 800; color: var(--accent-cyan); }

    /* Newsletter */
    .newsletter-section {
      background: radial-gradient(circle at 20% 30%, #0b1a2a, var(--bg-surface));
      border-radius: 48px;
      padding: 64px;
      text-align: center;
      border: 1px solid rgba(72,214,255,0.15);
    }

    footer {
      border-top: 1px solid rgba(72,214,255,0.1);
      padding: 60px 0 30px;
      margin-top: 40px;
    }

    /* Auth Modal */
    .auth-overlay {
      position: fixed;
      inset: 0;
      background: rgba(0,0,0,0.8);
      backdrop-filter: blur(12px);
      z-index: 1000;
      display: flex;
      align-items: center;
      justify-content: center;
      opacity: 0;
      visibility: hidden;
      transition: all 0.3s ease;
    }
    .auth-overlay.open { opacity: 1; visibility: visible; }
    .auth-modal {
      background: var(--bg-surface);
      border: 1px solid rgba(72,214,255,0.2);
      border-radius: 32px;
      width: 460px;
      max-width: 90vw;
      padding: 32px;
      transform: scale(0.95);
      transition: transform 0.3s ease;
    }
    .auth-overlay.open .auth-modal { transform: scale(1); }
    .auth-modal h3 { font-size: 28px; margin-bottom: 8px; }
    .auth-tabs {
      display: flex;
      gap: 12px;
      margin: 24px 0 20px;
      border-bottom: 1px solid rgba(255,255,255,0.1);
    }
    .auth-tab {
      background: none;
      border: none;
      padding: 10px 20px;
      color: var(--text-secondary);
      font-weight: 600;
      cursor: pointer;
      transition: var(--transition);
    }
    .auth-tab.active { color: var(--accent-cyan); border-bottom: 2px solid var(--accent-cyan); }
    .auth-form { display: flex; flex-direction: column; gap: 16px; }
    .auth-form.hidden { display: none; }
    .form-input {
      background: var(--bg-card);
      border: 1px solid var(--border-glow);
      border-radius: 16px;
      padding: 14px 18px;
      color: white;
      font-size: 14px;
      width: 100%;
      outline: none;
      transition: var(--transition);
    }
    .form-input:focus { border-color: var(--accent-cyan); }
    .btn-auth {
      background: linear-gradient(105deg, var(--accent-cyan), #1e8cd7);
      border: none;
      padding: 14px;
      border-radius: 40px;
      font-weight: 700;
      color: #05070a;
      cursor: pointer;
      margin-top: 8px;
    }
    .close-modal {
      position: absolute;
      top: 20px;
      right: 20px;
      background: none;
      border: none;
      color: var(--text-secondary);
      font-size: 24px;
      cursor: pointer;
    }
    .error-msg {
      color: var(--danger);
      font-size: 12px;
      margin-top: 4px;
      display: none;
    }
    .error-msg.show { display: block; }

    /* Favorites Drawer */
    .drawer-overlay {
      position: fixed;
      inset: 0;
      background: rgba(0,0,0,0.6);
      backdrop-filter: blur(5px);
      z-index: 300;
      opacity: 0;
      visibility: hidden;
      transition: all 0.3s;
    }
    .drawer-overlay.open { opacity: 1; visibility: visible; }
    .fav-drawer {
      position: fixed;
      right: 0;
      top: 0;
      width: 380px;
      height: 100%;
      background: #0c0f16;
      z-index: 301;
      transform: translateX(100%);
      transition: transform 0.3s ease;
      display: flex;
      flex-direction: column;
    }
    .fav-drawer.open { transform: translateX(0); }
    .toast {
      position: fixed;
      bottom: 30px;
      right: 30px;
      background: #1a202c;
      border-left: 4px solid var(--success);
      border-radius: 60px;
      padding: 12px 24px;
      display: flex;
      gap: 10px;
      transform: translateX(200px);
      transition: 0.3s;
      z-index: 999;
    }
    .toast.show { transform: translateX(0); }

    .mobile-toggle { display: none; }
    @media (max-width: 880px) {
      .main-nav { display: none; }
      .mobile-toggle { display: inline-flex; align-items: center; justify-content: center; background: var(--bg-card); border: 1px solid var(--border-glow); width: 42px; height: 42px; border-radius: 60px; color: white; cursor: pointer; }
      .deal-card { grid-template-columns: 1fr; }
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
        <li><a href="#products-section">Shop</a></li>
        <li><a href="#deals">Drops</a></li>
      </ul>
    </nav>
    <div style="display: flex; gap: 12px; align-items: center;">
      <div class="search-wrap">
        <i class="fas fa-search"></i>
        <input type="text" id="searchInput" placeholder="Search products...">
        <button id="searchBtn"><i class="fas fa-arrow-right"></i></button>
      </div>
      <button class="icon-btn" id="authBtn"><i class="far fa-user"></i></button>
      <button class="icon-btn" id="favDrawerBtn"><i class="far fa-heart"></i><span class="fav-badge" id="favBadge">0</span></button>
      <button class="icon-btn" id="cartBtn"><i class="fas fa-shopping-bag"></i><span class="cart-count" id="cartCount">0</span></button>
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
        <p style="color: var(--text-secondary); margin-top: 16px;">Curated drops, iconic designs, and unparalleled craftsmanship.</p>
        <div class="btn-group">
          <button class="btn-primary" id="shopNow">Explore collection →</button>
          <button class="btn-outline-light" id="exploreDeals">Flash Sale</button>
        </div>
      </div>
    </div>
  </section>

  <section id="categories" style="padding: 60px 0 40px;">
    <div class="container">
      <div style="text-align: center; margin-bottom: 40px;">
        <span style="color: var(--accent-cyan); font-weight: 600;">EDITORIAL PICKS</span>
        <h2 style="font-size: 42px; font-weight: 700;">Shop by mood</h2>
      </div>
      <div class="cat-filter" id="categoriesGrid"></div>
    </div>
  </section>

  <section id="products-section" style="padding-top: 0;">
    <div class="container">
      <div class="products-grid" id="productsGrid"></div>
    </div>
  </section>

  <section id="deals" style="padding: 60px 0;">
    <div class="container">
      <div class="deal-card">
        <div class="deal-content">
          <div class="deal-tag"><i class="fas fa-bolt"></i> limited run</div>
          <div class="deal-title">MacBook Air M2</div>
          <p style="color: var(--text-secondary); margin: 16px 0;">Next‑gen performance, 18h battery, and a design that defies limits.</p>
          <div class="timer">
            <div class="time-box"><div class="time-num" id="dealDays">0</div><div style="font-size: 12px;">Days</div></div>
            <div class="time-box"><div class="time-num" id="dealHours">00</div><div style="font-size: 12px;">Hrs</div></div>
            <div class="time-box"><div class="time-num" id="dealMinutes">00</div><div style="font-size: 12px;">Mins</div></div>
            <div class="time-box"><div class="time-num" id="dealSeconds">00</div><div style="font-size: 12px;">Sec</div></div>
          </div>
          <div class="price-row"><span class="price" style="font-size: 44px;">$999</span><span class="old-price" style="font-size: 20px;">$1,299</span></div>
          <button class="btn-primary" id="buyDeal" style="margin-top: 20px;">Secure now <i class="fas fa-lock"></i></button>
        </div>
        <div class="deal-img-side" style="background: url('https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80') center/cover;"></div>
      </div>
    </div>
  </section>

  <section>
    <div class="container">
      <div class="newsletter-section">
        <i class="fas fa-envelope" style="font-size: 40px; color: var(--accent-cyan); margin-bottom: 16px;"></i>
        <h3 style="font-size: 32px;">Insider access</h3>
        <p>First looks, private sales — straight to your inbox.</p>
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

<!-- Auth Modal -->
<div class="auth-overlay" id="authOverlay">
  <div class="auth-modal">
    <button class="close-modal" id="closeAuthModal"><i class="fas fa-times"></i></button>
    <h3>Welcome</h3>
    <p style="color: var(--text-secondary); margin-bottom: 20px;">Sign in or create an account</p>
    <div class="auth-tabs">
      <button class="auth-tab active" data-tab="login">Sign In</button>
      <button class="auth-tab" data-tab="signup">Create Account</button>
    </div>
    <div id="loginFormContainer" class="auth-form">
      <input type="email" id="loginEmail" class="form-input" placeholder="Email address">
      <div class="error-msg" id="loginEmailError">Valid email required</div>
      <input type="password" id="loginPassword" class="form-input" placeholder="Password">
      <div class="error-msg" id="loginPasswordError">Password required</div>
      <button class="btn-auth" id="loginBtn">Sign In</button>
      <p style="text-align: center; color: var(--text-secondary); font-size: 13px;">Demo: any email + password (min 4 chars)</p>
    </div>
    <div id="signupFormContainer" class="auth-form hidden">
      <input type="text" id="signupName" class="form-input" placeholder="Full name">
      <div class="error-msg" id="signupNameError">Name required</div>
      <input type="email" id="signupEmail" class="form-input" placeholder="Email address">
      <div class="error-msg" id="signupEmailError">Valid email required</div>
      <input type="password" id="signupPassword" class="form-input" placeholder="Password (min 4 chars)">
      <div class="error-msg" id="signupPasswordError">Password must be at least 4 characters</div>
      <button class="btn-auth" id="signupBtn">Create Account</button>
    </div>
  </div>
</div>

<!-- Favorites Drawer -->
<div class="drawer-overlay" id="drawerOverlay"></div>
<aside class="fav-drawer" id="favDrawer">
  <div style="padding: 24px; display: flex; justify-content: space-between; border-bottom: 1px solid rgba(255,255,255,0.1);">
    <span style="font-weight: 700; font-size: 20px;">My Favorites</span>
    <button id="drawerClose" style="background: none; border: none; color: white; font-size: 20px; cursor: pointer;"><i class="fas fa-times"></i></button>
  </div>
  <div id="drawerBody" style="flex:1; overflow: auto; padding: 20px;"></div>
  <div style="padding: 20px; border-top: 1px solid rgba(255,255,255,0.1);">
    <button id="clearFavBtn" style="width:100%; background: rgba(249,115,92,0.15); border: 1px solid var(--danger); padding: 12px; border-radius: 40px; color: var(--danger); cursor: pointer;">Clear All</button>
  </div>
</aside>

<div class="toast" id="toast"><i class="fas fa-check-circle" style="color: var(--success);"></i><span id="toastMsg">Added</span></div>

<script>
  // PRODUCT DATA
  const PRODUCTS = [
    { id:1, title:'iPhone 15 Pro', price:1099, oldPrice:1299, img:'https://images.unsplash.com/photo-1695048133142-1a20484d2569?auto=format&fit=crop&w=600&q=80', category:'phones' },
    { id:2, title:'MacBook Pro M3', price:1999, img:'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80', category:'laptops' },
    { id:3, title:'AirPods Max', price:549, oldPrice:649, img:'https://images.unsplash.com/photo-1618367588411-d9a55fccdee4?auto=format&fit=crop&w=600&q=80', category:'gadgets' },
    { id:4, title:'Yeezy 350 V2', price:230, img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category:'footwear' },
    { id:5, title:'Sony A7R V', price:3499, img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category:'gadgets' },
    { id:6, title:'Dior Sauvage', price:125, img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category:'accessories' },
    { id:7, title:'Onyx Backpack', price:89, oldPrice:129, img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category:'accessories' },
    { id:8, title:'Bose QC Ultra', price:429, img:'https://images.unsplash.com/photo-1600185365926-3a2ce3cdb9eb?auto=format&fit=crop&w=600&q=80', category:'gadgets' }
  ];
  const CATEGORIES = ['all', 'phones', 'laptops', 'gadgets', 'footwear', 'accessories'];
  const CAT_NAMES = { all:'All', phones:'Phones', laptops:'Laptops', gadgets:'Audio', footwear:'Footwear', accessories:'Wearables' };

  let cartCount = 0, activeCategory = 'all', favorites = JSON.parse(localStorage.getItem('favorites') || '{}');
  let currentUser = localStorage.getItem('currentUser') ? JSON.parse(localStorage.getItem('currentUser')) : null;

  // DOM elements
  const cartCountEl = document.getElementById('cartCount');
  const favBadge = document.getElementById('favBadge');
  const toastEl = document.getElementById('toast');
  const toastMsg = document.getElementById('toastMsg');
  const authOverlay = document.getElementById('authOverlay');
  const authBtn = document.getElementById('authBtn');
  const favDrawer = document.getElementById('favDrawer');
  const drawerOverlay = document.getElementById('drawerOverlay');

  function showToast(msg) { toastMsg.innerText = msg; toastEl.classList.add('show'); setTimeout(() => toastEl.classList.remove('show'), 2500); }
  function updateCartBadge() { cartCountEl.innerText = cartCount; cartCountEl.style.display = cartCount ? 'inline-flex' : 'none'; }
  function updateFavBadge() { let c = Object.keys(favorites).length; favBadge.innerText = c; favBadge.style.display = c ? 'inline-flex' : 'none'; localStorage.setItem('favorites', JSON.stringify(favorites)); }

  function renderCategories() {
    const grid = document.getElementById('categoriesGrid');
    grid.innerHTML = CATEGORIES.map(cat => `<button class="cat-pill ${activeCategory === cat ? 'active' : ''}" data-cat="${cat}"><i class="fas ${cat === 'all' ? 'fa-th' : 'fa-tag'}"></i> ${CAT_NAMES[cat]}</button>`).join('');
    document.querySelectorAll('.cat-pill').forEach(btn => btn.addEventListener('click', () => { activeCategory = btn.dataset.cat; renderCategories(); renderProducts(); }));
  }

  function renderProducts() {
    const filtered = activeCategory === 'all' ? PRODUCTS : PRODUCTS.filter(p => p.category === activeCategory);
    const grid = document.getElementById('productsGrid');
    if (!filtered.length) { grid.innerHTML = '<div style="text-align:center; padding:60px;">No products found</div>'; return; }
    grid.innerHTML = filtered.map(p => `
      <div class="product-card" data-id="${p.id}">
        <div class="product-img-wrap">
          <img src="${p.img}" alt="${p.title}">
          <button class="wish-overlay ${favorites[p.id] ? 'active' : ''}" data-id="${p.id}"><i class="fas fa-heart"></i></button>
        </div>
        <div class="product-body">
          <div class="product-title">${p.title}</div>
          <div class="price-row"><span class="price">$${p.price}</span>${p.oldPrice ? `<span class="old-price">$${p.oldPrice}</span>` : ''}</div>
          <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add to Cart</button>
        </div>
      </div>
    `).join('');
    document.querySelectorAll('.add-btn').forEach(btn => btn.addEventListener('click', (e) => { e.stopPropagation(); addToCart(parseInt(btn.dataset.id)); }));
    document.querySelectorAll('.wish-overlay').forEach(btn => btn.addEventListener('click', (e) => { e.stopPropagation(); toggleFavorite(parseInt(btn.dataset.id)); }));
  }

  function addToCart(id) { cartCount++; updateCartBadge(); showToast('✓ Added to cart'); }
  function toggleFavorite(id) { if (favorites[id]) delete favorites[id]; else favorites[id] = true; updateFavBadge(); renderProducts(); renderDrawer(); }

  function renderDrawer() {
    const drawerBody = document.getElementById('drawerBody');
    const ids = Object.keys(favorites).map(Number);
    if (!ids.length) { drawerBody.innerHTML = '<div style="text-align:center; padding:40px; color: var(--text-secondary);">No favorites yet<br>❤️ Tap heart on products</div>'; return; }
    drawerBody.innerHTML = ids.map(id => {
      const p = PRODUCTS.find(x => x.id === id);
      return `<div style="display:flex; gap:14px; margin-bottom:16px; background: var(--bg-card); border-radius: 16px; padding: 12px;">
        <img src="${p.img}" width="60" style="border-radius: 12px; object-fit: cover;">
        <div style="flex:1;"><div style="font-weight:600;">${p.title}</div><div class="price">$${p.price}</div></div>
        <button class="fav-remove-btn" data-id="${p.id}" style="background:none; border:1px solid var(--danger); border-radius:30px; padding:6px 12px; color:var(--danger); cursor:pointer;">Remove</button>
      </div>`;
    }).join('');
    document.querySelectorAll('.fav-remove-btn').forEach(btn => btn.addEventListener('click', () => { toggleFavorite(parseInt(btn.dataset.id)); renderDrawer(); }));
  }

  function openDrawer() { favDrawer.classList.add('open'); drawerOverlay.classList.add('open'); renderDrawer(); }
  function closeDrawer() { favDrawer.classList.remove('open'); drawerOverlay.classList.remove('open'); }
  document.getElementById('favDrawerBtn').addEventListener('click', openDrawer);
  document.getElementById('drawerClose').addEventListener('click', closeDrawer);
  drawerOverlay.addEventListener('click', closeDrawer);
  document.getElementById('clearFavBtn').addEventListener('click', () => { favorites = {}; updateFavBadge(); renderProducts(); renderDrawer(); showToast('All favorites cleared'); });

  // AUTH SYSTEM
  function openAuthModal() { authOverlay.classList.add('open'); }
  function closeAuthModal() { authOverlay.classList.remove('open'); }
  authBtn.addEventListener('click', () => { if (currentUser) { showToast(`Signed in as ${currentUser.name}`); } else openAuthModal(); });
  document.getElementById('closeAuthModal').addEventListener('click', closeAuthModal);
  authOverlay.addEventListener('click', (e) => { if (e.target === authOverlay) closeAuthModal(); });

  // Tab switching
  document.querySelectorAll('.auth-tab').forEach(tab => {
    tab.addEventListener('click', () => {
      document.querySelectorAll('.auth-tab').forEach(t => t.classList.remove('active'));
      tab.classList.add('active');
      const isLogin = tab.dataset.tab === 'login';
      document.getElementById('loginFormContainer').classList.toggle('hidden', !isLogin);
      document.getElementById('signupFormContainer').classList.toggle('hidden', isLogin);
    });
  });

  function validateEmail(email) { return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email); }

  document.getElementById('loginBtn').addEventListener('click', () => {
    const email = document.getElementById('loginEmail').value.trim();
    const password = document.getElementById('loginPassword').value;
    let valid = true;
    if (!validateEmail(email)) { document.getElementById('loginEmailError').classList.add('show'); valid = false; } else document.getElementById('loginEmailError').classList.remove('show');
    if (!password) { document.getElementById('loginPasswordError').classList.add('show'); valid = false; } else document.getElementById('loginPasswordError').classList.remove('show');
    if (!valid) return;
    const users = JSON.parse(localStorage.getItem('users') || '{}');
    if (users[email] && users[email].password === password) {
      currentUser = { name: users[email].name, email };
      localStorage.setItem('currentUser', JSON.stringify(currentUser));
      closeAuthModal();
      showToast(`Welcome back, ${currentUser.name}!`);
      updateAuthUI();
    } else {
      showToast('Invalid credentials');
    }
  });

  document.getElementById('signupBtn').addEventListener('click', () => {
    const name = document.getElementById('signupName').value.trim();
    const email = document.getElementById('signupEmail').value.trim();
    const password = document.getElementById('signupPassword').value;
    let valid = true;
    if (!name) { document.getElementById('signupNameError').classList.add('show'); valid = false; } else document.getElementById('signupNameError').classList.remove('show');
    if (!validateEmail(email)) { document.getElementById('signupEmailError').classList.add('show'); valid = false; } else document.getElementById('signupEmailError').classList.remove('show');
    if (password.length < 4) { document.getElementById('signupPasswordError').classList.add('show'); valid = false; } else document.getElementById('signupPasswordError').classList.remove('show');
    if (!valid) return;
    const users = JSON.parse(localStorage.getItem('users') || '{}');
    if (users[email]) { showToast('Email already exists'); return; }
    users[email] = { name, password };
    localStorage.setItem('users', JSON.stringify(users));
    currentUser = { name, email };
    localStorage.setItem('currentUser', JSON.stringify(currentUser));
    closeAuthModal();
    showToast(`Account created! Welcome ${name}`);
    updateAuthUI();
  });

  function updateAuthUI() {
    if (currentUser) {
      authBtn.innerHTML = `<i class="fas fa-user-check"></i>`;
      authBtn.style.background = 'rgba(72,214,255,0.2)';
    } else {
      authBtn.innerHTML = `<i class="far fa-user"></i>`;
      authBtn.style.background = '';
    }
  }
  updateAuthUI();

  // Search, deals, newsletter
  document.getElementById('searchBtn').addEventListener('click', () => {
    const query = document.getElementById('searchInput').value.toLowerCase();
    const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(query));
    const grid = document.getElementById('productsGrid');
    if (!filtered.length) grid.innerHTML = '<div style="text-align:center; padding:60px;">No results</div>';
    else grid.innerHTML = filtered.map(p => `<div class="product-card"><div class="product-img-wrap"><img src="${p.img}"><button class="wish-overlay ${favorites[p.id] ? 'active' : ''}" data-id="${p.id}"><i class="fas fa-heart"></i></button></div><div class="product-body"><div class="product-title">${p.title}</div><div class="price-row"><span class="price">$${p.price}</span></div><button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button></div></div>`).join('');
    document.querySelectorAll('.add-btn').forEach(btn => btn.addEventListener('click', () => addToCart(parseInt(btn.dataset.id))));
    document.querySelectorAll('.wish-overlay').forEach(btn => btn.addEventListener('click', () => toggleFavorite(parseInt(btn.dataset.id))));
  });
  document.getElementById('shopNow').addEventListener('click', () => document.getElementById('products-section').scrollIntoView({ behavior: 'smooth' }));
  document.getElementById('exploreDeals').addEventListener('click', () => document.getElementById('deals').scrollIntoView({ behavior: 'smooth' }));
  document.getElementById('buyDeal').addEventListener('click', () => { cartCount++; updateCartBadge(); showToast('MacBook Air added!'); });
  document.getElementById('newsletterForm').addEventListener('submit', (e) => { e.preventDefault(); document.getElementById('newsletterMsg').innerHTML = '<span style="color: var(--accent-cyan);">✨ Subscribed!</span>'; setTimeout(() => document.getElementById('newsletterMsg').innerHTML = '', 3000); });
  function startTimer() { let target = Date.now() + (36 * 3600000); setInterval(() => { let diff = Math.max(0, target - Date.now()); document.getElementById('dealDays').innerText = Math.floor(diff / 86400000); document.getElementById('dealHours').innerText = String(Math.floor((diff % 86400000) / 3600000)).padStart(2, '0'); document.getElementById('dealMinutes').innerText = String(Math.floor((diff % 3600000) / 60000)).padStart(2, '0'); document.getElementById('dealSeconds').innerText = String(Math.floor((diff % 60000) / 1000)).padStart(2, '0'); }, 1000); }
  startTimer();
  renderCategories();
  renderProducts();
  updateCartBadge();
  updateFavBadge();
  document.getElementById('mobileToggle').addEventListener('click', () => { let m = document.getElementById('mobileMenu'); m.style.display = m.style.display === 'block' ? 'none' : 'block'; });
</script>
</body>
</html>
