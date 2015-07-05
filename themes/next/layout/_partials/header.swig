<h1 class="site-meta">
  <div class=site-header>
    <span class="logo">
        {% if theme.logo.enable %}
         <a href="{{ config.root }}" class="brand">
          <img src="{{ url_for(theme.logo.src) }}"/>
        </a>
        {% endif %}
   </span>
  <!--
  <span class="logo-line-before"><i></i></span>
  -->
  <a href="{{ config.root }}" class="brand">
      <span class="site-title">{{ config.title }}</span>
  </a>
    <!--
    <span class="logo-line-after"><i></i></span>
    -->
    </div>
</h1>

{% if theme.menu %}
  <ul id="menu" class="menu">
    {% for name, path in theme.menu %}
      {% set itemName = name.toLowerCase() %}
      <li class="menu-item menu-item-{{ itemName }}">
        <a href="{{ url_for(path) }}">
          <i class="menu-item-icon icon-{{ itemName }}"></i> <br />
          {{ __('menu.' + itemName) }}
        </a>
      </li>
    {% endfor %}
  </ul>
{% endif %}
