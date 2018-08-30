{#C#}
<div class="copyright">
{#时间#}
  {% set current = date(Date.now(), "YYYY") %}{##}
  &copy; {% if theme.footer.since and theme.footer.since != current %}{{ theme.footer.since }} &mdash; {% endif %}
  <span itemprop="copyrightYear">{{ current }}</span>

{#icon#}
  <span class="with-love">
    <i class="fa fa-star-o"></i>
  </span>
{#author#}
  <span class="author" itemprop="copyrightHolder">{{ theme.footer.copyright || config.author }}</span>

{#内容换行#}
  {% if theme.post_wordcount.totalcount %}
    <span class="post-meta-divider">|</span>
    <span class="post-meta-item-icon">
      <i class="fa fa-area-chart"></i>
    </span>
    {% if theme.post_wordcount.item_text %}
      <span class="post-meta-item-text">{{ __('post.totalcount') }}&#58;</span>
    {% endif %}
    <span title="{{ __('post.totalcount') }}">
    {{ totalcount(site, '0,0.0a') }}
  </span>
  {% endif %}
</div>

{#  由Hexo强力驱动
{% if theme.footer.powered %}
  <div class="powered-by">
  {{ __('footer.powered', '<a class="theme-link" target="_blank" href="https://hexo.io">Hexo</a>') }}
  </div>
{% endif %}
#}

{#信息#}
<div class="theme-info">
day day code
</div>

{#划分线#}
{% if theme.footer.powered and theme.footer.theme.enable %}
  <span class="post-meta-divider">|</span>
{% endif %}

{#信息#}
<div class="theme-info">
line line bug
</div>

{#  next版本
{% if theme.footer.theme.enable %}
  <div class="theme-info">
  {{ __('footer.theme') }} &mdash; 
  <a class="theme-link" target="_blank" href="https://github.com/iissnan/hexo-theme-next">
    NexT.{{ theme.scheme }}
  </a>{% if theme.footer.theme.version %} v{{ theme.version }}{% endif %}
  </div>
{% endif %}

{% if theme.footer.custom_text %}
  <div class="footer-custom">
  {{ theme.footer.custom_text }}
  </div>
{% endif %}

#}