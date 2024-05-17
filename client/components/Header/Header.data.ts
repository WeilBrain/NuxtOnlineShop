interface IHeader {
    text?: string,
    link?: string
}

export const HeaderData: IHeader[] = [
    {
      text: 'Home',
      link: '/'
    },
    {
        text: 'About Us',
        link: '/about'
    },
    {
        text: 'Properties',
        link: '/properties'
    },
    {
        text: 'Services',
        link: '/services'
    },
]