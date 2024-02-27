explore: Transacting Vehicles Header {
  access_filter: {
      {% if user_attribute['access_level'] == 'org' %}
        {% access_filters %}
          access_filter: {
            view_name: your_view_name
            field: org_id
            user_attribute: org_id
          }
        {% endaccess_filters %}
      {% elsif user_attribute['access_level'] == 'entity' %}
        {% access_filters %}
          access_filter: {
            view_name: your_view_name
            field: entity_id
            user_attribute: entity_id
          }
        {% endaccess_filters %}
      {% endif %}
  }
}
