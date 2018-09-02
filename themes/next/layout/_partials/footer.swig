{#C#}
<div class="copyright">
{#时间#}
  {% set current = date(Date.now(), "YYYY") %}
&copy; {% if theme.footer.since and theme.footer.since != current %}{{ theme.footer.since }} – {% endif %}
<span itemprop="copyrightYear">{{ current }}</span>
{#icon#}
<span class="with-love" id="animate">
    <i class="fa fa-{{ theme.footer.icon.name }}"></i>
</span>

{#author#}
<span class="author" itemprop="copyrightHolder">{{ theme.footer.copyright | default(author) }}</span>

{#内容换行#}
  {% if config.symbols_count_time.total_symbols %}
    <span class="post-meta-divider">|</span>
    <span class="post-meta-item-icon">
      <i class="fa fa-area-chart"></i>
    </span>
    {% if theme.symbols_count_time.item_text_total %}
      <span class="post-meta-item-text">{{ __('symbols_count_time.count_total') + __('symbol.colon') }}</span>
    {% endif %}
    <span title="{{ __('symbols_count_time.count_total') }}">
    {{ symbolsCountTotal(site) }}
  </span>
  {% endif %}

  {% if config.symbols_count_time.total_time %}
    <span class="post-meta-divider">|</span>
    <span class="post-meta-item-icon">
      <i class="fa fa-coffee"></i>
    </span>
    {% if theme.symbols_count_time.item_text_total %}
      <span class="post-meta-item-text">{{ __('symbols_count_time.time_total')}} &asymp;</span>
    {% endif %}
    <span title="{{ __('symbols_count_time.time_total') }}">
    {{ symbolsTimeTotal(site, theme.symbols_count_time.awl, theme.symbols_count_time.wpm, __('symbols_count_time.time_minutes')) }}
  </span>
  {% endif %}
</div>

{% if theme.seo %}
  {% set nofollow = ' rel="external nofollow"' %}
{% endif %}

{# 
  由Hexo强力驱动
  {% if theme.footer.powered.enable %}
    <div class="powered-by">
    {{ __('footer.powered', '<a class="theme-link" target="_blank"' + nofollow + ' href="https://hexo.io">Hexo</a>') }}{% if theme.footer.powered.version %} v{{ hexo_env('version') }}{% endif %}
    </div>
  {% endif %}
#}

{#左侧信息#}
<div class="theme-info">
day day code 
</div>

{#划分线#}
{% if theme.footer.powered.enable and theme.footer.theme.enable %}
  <span class="post-meta-divider">|</span>
{% endif %}

{#右侧信息#}
<div class="theme-info">
line line bug
</div>

{# 
  next版本
  {% if theme.footer.theme.enable %}
    <div class="theme-info">
    {{ __('footer.theme') }} – 
    <a class="theme-link" target="_blank"{{ nofollow }} href="https://theme-next.org">
      NexT.{{ theme.scheme }}
    </a>{% if theme.footer.theme.version %} v{{ version }}{% endif %}
  </div>
  {% endif %}

  {% if theme.footer.custom_text %}
    <div class="footer-custom">
    {{ theme.footer.custom_text }}
  </div>
  {% endif %}
#}