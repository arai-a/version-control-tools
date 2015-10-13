import logging

from django import template

register = template.Library()


@register.filter()
def isSquashed(aReviewRequest):
    return str(aReviewRequest.extra_data.get('p2rb.is_squashed', 'False')).lower() == 'true'

@register.filter()
def isPush(aReviewRequest):
    return str(aReviewRequest.extra_data.get('p2rb', 'False')).lower() == 'true'

def reviewer_list(review_request):
    return ', '.join([user.username
                      for user in review_request.target_people.all()])

@register.filter()
def extra_data(review_request, key):
    return review_request.extra_data[key]


@register.filter()
def scm_level(mozreview_profile):
    if mozreview_profile is None:
        return ''
    elif mozreview_profile.has_scm_ldap_group('scm_level_3'):
        return '3'
    elif mozreview_profile.has_scm_ldap_group('scm_level_1'):
        return '1'


@register.filter()
def required_ldap_group(repository):
    try:
        return repository.extra_data['required_ldap_group']
    except (AttributeError, KeyError):
        return ''


@register.filter()
def has_try_repository(repository):
    try:
        return ('true' if repository.extra_data['try_repository_url']
                else 'false')
    except (AttributeError, KeyError):
        return 'false'


@register.filter()
def has_landing_repository(repository):
    try:
        return ('true' if repository.extra_data['landing_repository_url']
                else 'false')
    except (AttributeError, KeyError):
        return 'false'
