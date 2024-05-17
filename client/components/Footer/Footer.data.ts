interface IFooter{
    title: string,
    linkName: string[],
    link: string[]
}

interface ISocial{
    image: string,
    link: string
}


export const FooterData: IFooter[] = [
    {
      title: 'Home',
      linkName: ['Hero Section', 'Features', 'Properties', 'Testimonials', 'FAQ’s'],
        link: ['/', '/', '/', '/', '/',]
    },
    {
        title: 'About Us',
        linkName: ['Our Story', 'Our Works', 'How It Works', 'Our Team', 'Our Clients'],
        link: ['/', '/', '/', '/', '/',]
    },
    {
        title: 'Properties',
        linkName: ['Portfolio', 'Categories',],
        link: ['/', '/',]
    },
    {
        title: 'Services',
        linkName: ['Valuation Mastery', 'Strategic Marketing', 'Negotiation Wizardry', 'Closing Success', 'Property Management'],
        link: ['/', '/', '/', '/', '/',]
    },
    {
        title: 'Contact Us',
        linkName: ['Contact Form', 'Our Offices'],
        link: ['/', '/',]
    },
]

export const SocialData: ISocial[] = [
    {
        image: '/Footer/facebook.svg',
        link: '/'
    },
    {
        image: '/Footer/linkedin.svg',
        link: '/'
    },
    {
        image: '/Footer/twitter.svg',
        link: '/'
    },
    {
        image: '/Footer/yt.svg',
        link: '/'
    },
]